// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Oct  4 16:10:29 2024
// Host        : DESKTOP-E28LBAG running 64-bit major release  (build 9200)
// Command     : write_verilog -force out//netlist.v -mode timesim -sdf_anno true
// Design      : ripple_carry_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module full_adder
   (o_result_OBUF,
    i_add_term1_IBUF,
    i_add_term2_IBUF);
  output [0:0]o_result_OBUF;
  input [1:0]i_add_term1_IBUF;
  input [1:0]i_add_term2_IBUF;

  wire [1:0]i_add_term1_IBUF;
  wire [1:0]i_add_term2_IBUF;
  wire [0:0]o_result_OBUF;

  LUT4 #(
    .INIT(16'hF880)) 
    o_carry
       (.I0(i_add_term1_IBUF[0]),
        .I1(i_add_term2_IBUF[0]),
        .I2(i_add_term2_IBUF[1]),
        .I3(i_add_term1_IBUF[1]),
        .O(o_result_OBUF));
endmodule

(* ECO_CHECKSUM = "6b0a781f" *) 
(* NotValidForBitStream *)
module ripple_carry_adder
   (i_add_term1,
    i_add_term2,
    o_result);
  input [1:0]i_add_term1;
  input [1:0]i_add_term2;
  output [2:0]o_result;

  wire [1:0]i_add_term1;
  wire [1:0]i_add_term1_IBUF;
  wire [1:0]i_add_term2;
  wire [1:0]i_add_term2_IBUF;
  wire [2:0]o_result;
  wire [2:0]o_result_OBUF;

initial begin
 $sdf_annotate("netlist.sdf",,,,"tool_control");
end
  full_adder full_adder_2
       (.i_add_term1_IBUF(i_add_term1_IBUF),
        .i_add_term2_IBUF(i_add_term2_IBUF),
        .o_result_OBUF(o_result_OBUF[2]));
  IBUF \i_add_term1_IBUF[0]_inst 
       (.I(i_add_term1[0]),
        .O(i_add_term1_IBUF[0]));
  IBUF \i_add_term1_IBUF[1]_inst 
       (.I(i_add_term1[1]),
        .O(i_add_term1_IBUF[1]));
  IBUF \i_add_term2_IBUF[0]_inst 
       (.I(i_add_term2[0]),
        .O(i_add_term2_IBUF[0]));
  IBUF \i_add_term2_IBUF[1]_inst 
       (.I(i_add_term2[1]),
        .O(i_add_term2_IBUF[1]));
  OBUF \o_result_OBUF[0]_inst 
       (.I(o_result_OBUF[0]),
        .O(o_result[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_result_OBUF[0]_inst_i_1 
       (.I0(i_add_term2_IBUF[0]),
        .I1(i_add_term1_IBUF[0]),
        .O(o_result_OBUF[0]));
  OBUF \o_result_OBUF[1]_inst 
       (.I(o_result_OBUF[1]),
        .O(o_result[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \o_result_OBUF[1]_inst_i_1 
       (.I0(i_add_term2_IBUF[0]),
        .I1(i_add_term1_IBUF[0]),
        .I2(i_add_term1_IBUF[1]),
        .I3(i_add_term2_IBUF[1]),
        .O(o_result_OBUF[1]));
  OBUF \o_result_OBUF[2]_inst 
       (.I(o_result_OBUF[2]),
        .O(o_result[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
