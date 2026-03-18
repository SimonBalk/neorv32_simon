import re

def extract_flipflops(flat_verilog_file):
    """
    Extract all flip-flops (reg signals) from a flattened Verilog file
    and return them with synthetic hierarchical paths.
    """
    flipflops = []

    # Regex patterns
    module_decl_re = re.compile(r'^\s*module\s+(\w+)')
    reg_decl_re = re.compile(r'^\s*reg\s+(\[.*?\]\s*)?([\w_]+)')
    inst_decl_re = re.compile(r'^\s*(\w+)\s+(\w+)\s*\(')  # instance: <type> <name> (...)

    hierarchy_stack = []

    with open(flat_verilog_file, 'r') as f:
        for line in f:
            line = line.strip()

            # Skip empty lines or comments
            if not line or line.startswith('//') or line.startswith('/*'):
                continue

            # Module declaration
            module_match = module_decl_re.match(line)
            if module_match:
                module_name = module_match.group(1)
                hierarchy_stack.append(module_name)
                continue

            # Endmodule -> pop hierarchy
            if line.startswith('endmodule'):
                if hierarchy_stack:
                    hierarchy_stack.pop()
                continue

            # Instance declaration
            inst_match = inst_decl_re.match(line)
            if inst_match:
                inst_name = inst_match.group(2)
                hierarchy_stack.append(inst_name)
                continue

            # Reg (flip-flop) declaration
            reg_match = reg_decl_re.match(line)
            if reg_match:
                reg_name = reg_match.group(2)
                full_path = '.'.join(hierarchy_stack + [reg_name])
                flipflops.append(full_path)
                continue

            # Detect end of instance (simple heuristic)
            if line.endswith(';') and hierarchy_stack:
                if len(hierarchy_stack) > 1:
                    hierarchy_stack.pop()

    return flipflops

def generate_flop_faults(ff_list):
    """
    Generate fault injection lines for FLOP faults.
    """
    print("NA ~ (1:100) {")
    for ff in ff_list:
        print(f'    FLOP "{ff}"')
    print("}")

if __name__ == "__main__":
    verilog_file = "neorv32_verilog_wrapper.v"  # Replace with your flattened Verilog file
    flipflops = extract_flipflops(verilog_file)

    print(f"Found {len(flipflops)} flip-flops.\nGenerating FLOP fault list:\n")
    generate_flop_faults(flipflops)
