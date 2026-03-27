.DEFAULT_GOAL := convert

GHDL ?= ghdl
BUILD ?= build

# Your top entity name (must match entity in counter.vhdl)
TOP ?= counter

SRC = counter.vhdl

$(TOP).v:
	@echo "Converting $(SRC) -> $(TOP).v"
	@mkdir -p $(BUILD)
	@$(GHDL) -i --std=08 --workdir=$(BUILD) $(SRC)
	@$(GHDL) -m --std=08 --workdir=$(BUILD) $(TOP)
	@$(GHDL) synth --std=08 --workdir=$(BUILD) --out=verilog $(TOP) > $(TOP).v

convert: $(TOP).v

clean:
	rm -rf $(BUILD) *.v
