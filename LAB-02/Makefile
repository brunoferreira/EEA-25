filename = full_adder
pcf_file = full_adder.pcf
simulation_filename = full_adder_tb

simulation:
	iverilog $(simulation_filename).v
	vvp a.out
	gtkwave $(simulation_filename).vcd


build:
	yosys -p "synth_ice40 -json $(filename).json -blif $(filename).blif" $(filename).v
	nextpnr-ice40 --lp1k --package cm36 --json $(filename).json --pcf $(pcf_file) --asc $(filename).asc --freq 48
	icepack $(filename).asc $(filename).bin


run:
	sudo icesprog full_adder.bin


clean:
	rm -rf $(filename).blif $(filename).asc $(filename).bin
