import re
from collections import OrderedDict

INPUT_FILE = "neorv32_verilog_wrapper.v"
OUTPUT_FILE = "user.sff"

TOP = "neorv32_verilog_wrapper"

# ------------------------------------------------------------
# REGEX
# ------------------------------------------------------------

inst_re = re.compile(r"(\w+)\s+(\w+)\s*\((.*?)\);", re.S)
port_re = re.compile(r"\.(\w+)\s*\(\s*([^)]+)\s*\)")

assign_re = re.compile(r"assign\s+(\S+)\s*=\s*(.+?);")

always_re = re.compile(
    r"always\s*@\s*\(posedge\s+(\w+)\)\s*(.*?)(?=always|endmodule|$)",
    re.S
)

nb_lhs_re = re.compile(r"(\w+(?:\[[^\]]+\])?)\s*<=")

regfile_re = re.compile(
    r"reg\s+\[.*?\]\s+(\w+)\s*\[(\d+)\s*:\s*0\]"
)

# ------------------------------------------------------------
# LOAD FILE
# ------------------------------------------------------------
with open(INPUT_FILE) as f:
    text = f.read()

# ------------------------------------------------------------
# 1. ASSIGN MAP (full alias graph)
# ------------------------------------------------------------
assign_map = {}
for lhs, rhs in assign_re.findall(text):
    assign_map[lhs.strip()] = rhs.strip()

def resolve(sig):
    """Follow assign chains aggressively (IMPORTANT FOR FULL COVERAGE)"""
    seen = set()
    cur = sig
    while cur in assign_map and cur not in seen:
        seen.add(cur)
        cur = assign_map[cur]
    return cur

# ------------------------------------------------------------
# 2. MEMORY DETECTION
# ------------------------------------------------------------
memories = {}
for name, depth in regfile_re.findall(text):
    memories[name] = int(depth) + 1

# ------------------------------------------------------------
# 3. FLIP-FLOP COLLECTOR
# ------------------------------------------------------------
ff_set = set()

# ------------------------------------------------------------
# 4. INSTANCE PORT FFs (VERY PERMISSIVE)
# ------------------------------------------------------------
for mod, inst, body in inst_re.findall(text):
    ports = port_re.findall(body)

    for port, net in ports:
        full = f"{TOP}.{inst}.{port}"

        resolved = resolve(net)

        # RESTORED: very broad FF capture (important for flattened nets)
        if (
            "[" in resolved or
            "_" in resolved or
            "ctrl" in resolved or
            "reg" in resolved or
            "state" in resolved or
            "fifo" in resolved or
            "data" in resolved or
            "_o" in resolved or
            "_q" in resolved or
            "_n" in resolved
        ):
            ff_set.add(full)

# ------------------------------------------------------------
# 5. ALWAYS BLOCK FFs (CRITICAL RESTORED PATH)
# ------------------------------------------------------------
for clk, block in always_re.findall(text):
    lhs_list = nb_lhs_re.findall(block)

    for lhs in lhs_list:
        resolved = resolve(lhs)

        ff_set.add(f"{TOP}.{resolved}")

        # ALSO KEEP RAW REGFILE SIGNALS
        if "regfile" in lhs:
            ff_set.add(f"{TOP}.{lhs}")

# ------------------------------------------------------------
# 6. REGFILE EXPANSION (FULL RESTORE)
# ------------------------------------------------------------
expanded = set(ff_set)

for sig in list(ff_set):
    for mem, depth in memories.items():
        if mem in sig:
            for i in range(depth):
                expanded.add(sig.replace(mem, f"{mem}[{i}]"))

# ------------------------------------------------------------
# 7. DO NOT OVER-DEDUP EARLY (only final cleanup)
# ------------------------------------------------------------
final_ff = sorted(OrderedDict.fromkeys(expanded))

# ------------------------------------------------------------
# 8. WRITE SYNOPSYS FORMAT (MATCH YOUR TEMPLATE)
# ------------------------------------------------------------
with open(OUTPUT_FILE, "w") as f:
    f.write("""#*******************************************************************************
# (c) 2019 Synopsys, Inc.
#
# Auto-generated Fault File
#*******************************************************************************

StatusDefinitions
{
    Redefine ND NX "Not Detected"
    Redefine DD DX "Redefine DD";

    NN "Not Observed Not Diagnosed";
    NP "Not Observed Potential Diagnosed";
    ND "Not Observed Diagnosed";
    PN "Potential Observed Not Diagnosed";
    OP "Observed Potentially Diagnosed";
    ON "Observed Not Diagnosed";
    OD "Observed Diagnosed";

    DefaultStatus (NN)
    Selected (NA, NN, NP, PN, OP, ON)

    PromotionTable
    {
        StatusLabels (NN,NP,ND,PN,OP,ON,OD)
        [   -   |   |   |  ON   |   |  ;
            -   -   |   |   |   |   |  ;
            -   -   -   |  OD   |   |  ;
            -   -   -   -  ON   |   |  ;
           ON   -  OD  ON  OP   |   |  ;
            -   -   -   -   -   -   |  ;
            -   -   -   -   -   -   -  ;
        ]
    }

    StatusGroups
    {
        SA "Safe" (UT, UB, UR, UU);
        DU "Dangerous Unobserved" (NN, NC, NO, NT);
        DA "Dangerous Assumed" (HA, HM, HT, OA, OZ, IA, IP, IF, IX);
        DN "Dangerous Not Diagnosed" (PN, ON, OP);
        DD "Dangerous Diagnosed" (NP, ND, OD);
    }
}

FaultGenerate
{
    Timing("main_clk", CycleTime 1ns)
    UseTiming("main_clk")

""")

    for p in final_ff:
        f.write(f'    NA ~ (198:200) {{ FLOP "{p}" }}\n')

    f.write("""
}

Coverage
{
    "Diagnostic Coverage" = "DD/(NA + DU + DA + DN + DD)";
}
""")

print(f"FULL COVERAGE MODE: extracted {len(final_ff)} flip-flops")
