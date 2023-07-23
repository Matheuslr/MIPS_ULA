compile-ULA:
	iverilog -o ULA_desing ULA.v ULA_tb.v
run-ULA:
	vvp ULA_desing

compile-ULAControl:
	iverilog -o ULAControl_desing ULAControl.v ULAControl_tb.v
run-ULAControl:
	vvp ULAControl_desing	

compile-MIPS:
	iverilog -o MIPS_desing MIPS.v MIPS_tb.v
run-MIPS:
	vvp MIPS_desing	

compile:
	make compile-ULAControl compile-ULA compile-MIPS 
run:
	make run-ULAControl run-ULA run-MIPS