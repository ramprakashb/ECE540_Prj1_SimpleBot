// 
// mfp_ahb_const.vh
//
// Verilog include file with AHB definitions
// 

//---------------------------------------------------
// Physical bit-width of memory-mapped I/O interfaces
//---------------------------------------------------
`define MFP_N_LED             16
`define MFP_N_SW              16
`define MFP_N_PB              5

//seven-segment
`define MFP_N_SEVEN_SEG_EN	  32
`define MFP_N_SEVEN_SEG_LW_DIGIT 32
`define MFP_N_SEVEN_SEG_UP_DIGIT 32
`define MFP_N_SEVEN_SEG_DP	  32


//---------------------------------------------------
// Memory-mapped I/O addresses
//---------------------------------------------------
`define H_LED_ADDR    			(32'h1f800000)
`define H_SW_ADDR   			(32'h1f800004)
`define H_PB_ADDR   			(32'h1f800008)

//7 segment address
`define H_SEG_ADDR_EN    		(32'h1f700000)
`define H_SEG_ADDR_LOWER    	(32'h1f700008)
`define H_SEG_ADDR_UPPER    	(32'h1f700004)
`define H_SEG_ADDR_DP   		(32'h1f70000C)

`define H_LED_IONUM   			(4'h0)
`define H_SW_IONUM  			(4'h1)
`define H_PB_IONUM  			(4'h2)

//---------------------------------------------------
// RAM addresses
//---------------------------------------------------
`define H_RAM_RESET_ADDR 		(32'h1fc?????)
`define H_RAM_ADDR	 		    (32'h0???????)
`define H_RAM_RESET_ADDR_WIDTH  (8) 
`define H_RAM_ADDR_WIDTH		(16) 

`define H_RAM_RESET_ADDR_Match  (7'h7f)
`define H_RAM_ADDR_Match 		(1'b0)
`define H_LED_ADDR_Match		(7'h7e)

//Seven-Segment
`define H_SEG_ADDR_Match		(7'h7d)			//Seven segment physical address
`define SEVEN_SEG_EN 			(4'h0)	//seven seg enable register ;  programmer codes for the address 0x1F70_0000 
`define SEVEN_SEG_LOWER			(4'h8)	//Seven segment lower order digits ; programmer codes for the address 0x1F70_0008
`define SEVEN_SEG_UPPER			(4'h4)	//Seven segment higher order digits ; programmer codes for the address 0x1F70_0004
`define SEVEN_SEG_DP			(4'hC)	//Seven segment decimal point ; programmer codes for the address 0x1F70_000C
//---------------------------------------------------
// AHB-Lite values used by MIPSfpga core
//---------------------------------------------------

`define HTRANS_IDLE    2'b00
`define HTRANS_NONSEQ  2'b10
`define HTRANS_SEQ     2'b11

`define HBURST_SINGLE  3'b000
`define HBURST_WRAP4   3'b010

`define HSIZE_1        3'b000
`define HSIZE_2        3'b001
`define HSIZE_4        3'b010
