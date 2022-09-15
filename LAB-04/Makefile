filename = top_level
pcf_file = top_level.pcf
simulation_filename = top_level_tb

simulation:
	iverilog $(simulation_filename).v
	vvp a.out
	gtkwave $(simulation_filename).vcd


build:
	yosys -p "synth_ice40 -json $(filename).json -blif $(filename).blif" $(filename).v
	nextpnr-ice40 --lp1k --package cm36 --json $(filename).json --pcf $(pcf_file) --asc $(filename).asc --freq 48
	icepack $(filename).asc $(filename).bin


run:
	sudo icesprog top_level.bin


clean:
	rm -rf $(filename).blif $(filename).asc $(filename).bin
