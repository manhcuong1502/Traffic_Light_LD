// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 25 11:09:49 2023
// Host        : Christian running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/HOME/Downloads/trafficlight/project_1/project_1.sim/sim_1/synth/func/xsim/traffic_control_tb_func_synth.v
// Design      : trial
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module trial
   (d,
    led,
    rst,
    clk);
  input [3:0]d;
  output [6:0]led;
  input rst;
  input clk;

  wire [3:0]d;
  wire [3:0]d_IBUF;
  wire [6:0]led;
  wire [4:0]led_OBUF;
  wire \led_reg[1]_i_1_n_0 ;
  wire \led_reg[4]_i_1_n_0 ;
  wire \led_reg[6]_i_1_n_0 ;
  wire \led_reg[6]_i_2_n_0 ;
  wire rst;
  wire rst_IBUF;

  IBUF #(
    .CCIO_EN("TRUE")) 
    \d_IBUF[0]_inst 
       (.I(d[0]),
        .O(d_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \d_IBUF[1]_inst 
       (.I(d[1]),
        .O(d_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \d_IBUF[2]_inst 
       (.I(d[2]),
        .O(d_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \d_IBUF[3]_inst 
       (.I(d[3]),
        .O(d_IBUF[3]));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[2]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(1'b1),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[2]),
        .O(led[6]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \led_reg[0] 
       (.D(d_IBUF[1]),
        .G(\led_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .PRE(rst_IBUF),
        .Q(led_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \led_reg[1] 
       (.D(\led_reg[1]_i_1_n_0 ),
        .G(\led_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .PRE(rst_IBUF),
        .Q(led_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \led_reg[1]_i_1 
       (.I0(d_IBUF[0]),
        .I1(d_IBUF[1]),
        .O(\led_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \led_reg[4] 
       (.D(\led_reg[4]_i_1_n_0 ),
        .G(\led_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .PRE(rst_IBUF),
        .Q(led_OBUF[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \led_reg[4]_i_1 
       (.I0(d_IBUF[1]),
        .O(\led_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDPE #(
    .INIT(1'b1)) 
    \led_reg[6] 
       (.D(\led_reg[6]_i_1_n_0 ),
        .G(\led_reg[6]_i_2_n_0 ),
        .GE(1'b1),
        .PRE(rst_IBUF),
        .Q(led_OBUF[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \led_reg[6]_i_1 
       (.I0(d_IBUF[0]),
        .O(\led_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \led_reg[6]_i_2 
       (.I0(d_IBUF[1]),
        .I1(d_IBUF[0]),
        .I2(d_IBUF[2]),
        .I3(d_IBUF[3]),
        .O(\led_reg[6]_i_2_n_0 ));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
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
