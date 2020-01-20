// mfp_ahb_gpio.v
//
// General-purpose I/O module for Altera's DE2-115 and 
// Digilent's (Xilinx) Nexys4-DDR board


`include "mfp_ahb_const.vh"

module mfp_ahb_segment(
    input                        HCLK,
    input                        HRESETn,
    input      [  3          :0] HADDR,
    input      [  1          :0] HTRANS,
    input      [ 31          :0] HWDATA,
    input                        HWRITE,
    input      					 HSEL,
   

// memory-mapped 7segment
	output						SEG_CA,
	output						SEG_CB,
	output						SEG_CC,
	output						SEG_CD,
	output						SEG_CE,
	output						SEG_CF,
	output						SEG_CG,
	output						SEG_DP,
	output 		[ 7         :0]	SEG_AN
);



		//mfp_ahb_sevensegtimer mfp_ahb_sevensegtimer(.clk(HCLK),.resetn(HRESETn),.EN(8'hE0),.DIGITS(64'h0706_0504_0302_0100),
			//						.dp(8'hFE),.DISPENOUT(SEG_AN),.DISPOUT({SEG_CA,SEG_CB,SEG_CC,SEG_CD,SEG_CE,SEG_CF,SEG_CG,SEG_DP}));

 	mfp_ahb_sevensegtimer mfp_ahb_sevensegtimer(.clk(HCLK),.resetn(HRESETn),.EN(EN),.DIGITS({UPPER,LOWER}),.dp(DP),
												.DISPENOUT(SEG_AN),.DISPOUT({SEG_CA,SEG_CB,SEG_CC,SEG_CD,SEG_CE,SEG_CF,SEG_CG,SEG_DP}));

  reg  [3:0]  HADDR_d;
  reg         HWRITE_d;
  reg         HSEL_d;
  reg  [1:0]  HTRANS_d;
  reg  [7:0]  EN;
  reg  [31:0] UPPER;
  reg  [31:0] LOWER;
  reg  [7:0]  DP;
  //; HADDR, HWRITE, HSEL, and HTRANS to align with HWDATA for writing
  always @ (posedge HCLK) begin
    HADDR_d  <= HADDR;
	HWRITE_d <= HWRITE;
	HSEL_d   <= HSEL;
	HTRANS_d <= HTRANS;
  end
  
  //overall write enable signal
  assign we =  HSEL_d &  HWRITE_d;

  always@(posedge HCLK or negedge HRESETn) 
	if(~HRESETn) begin
		EN <= 8'b0000_0000;
		UPPER <= 32'h0000_0000;
		LOWER <= 32'h0000_0000;
		DP    <= 8'b0000_0000;		
	end
	else if (we) begin
		case (HADDR_d)
			`SEVEN_SEG_EN   : EN    <= HWDATA[7:0];
			`SEVEN_SEG_LOWER: LOWER <= HWDATA;
			`SEVEN_SEG_UPPER: UPPER <= HWDATA;
			`SEVEN_SEG_DP	: DP    <= HWDATA[7:0];
				
			default: 
			begin
			EN 	  <= 8'b0000_0000;
			UPPER <= 32'h0000_0000;
			LOWER <= 32'h0000_0000;
			DP    <= 8'b0000_0000;	
			end
		endcase
	end	 

			
			 



  
endmodule