// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Apr 23 19:37:12 2023
// Host        : Christian running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/HOME/Downloads/trafficlight/project_1/project_1.sim/sim_1/synth/timing/xsim/traffic_control_time_synth.v
// Design      : traffic_control
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* Four = "2'b11" *) (* One = "2'b00" *) (* Three = "2'b10" *) 
(* Two = "2'b01" *) 
(* NotValidForBitStream *)
module traffic_control
   (A_lights,
    B_lights,
    clk,
    rst_a,
    num_out,
    sw);
  output [2:0]A_lights;
  output [2:0]B_lights;
  input clk;
  input rst_a;
  output [3:0]num_out;
  input [1:0]sw;

  wire [2:0]A_lights;
  wire [2:0]A_lights_OBUF;
  wire [2:0]B_lights;
  wire [2:0]B_lights_OBUF;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire check0;
  wire check0_i_1_n_0;
  wire check1;
  wire check1_i_1_n_0;
  wire check2;
  wire check2_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [3:0]num_out;
  wire \num_out[0]_i_1_n_0 ;
  wire \num_out[1]_i_1_n_0 ;
  wire \num_out[1]_i_2_n_0 ;
  wire \num_out[2]_i_1_n_0 ;
  wire \num_out[2]_i_2_n_0 ;
  wire \num_out[3]_i_1_n_0 ;
  wire \num_out[3]_i_2_n_0 ;
  wire [3:0]num_out_OBUF;
  wire rst_a;
  wire rst_a_IBUF;
  wire [1:1]state;
  wire [1:0]sw;
  wire [1:0]sw_IBUF;

initial begin
 $sdf_annotate("traffic_control_time_synth.sdf",,,,"tool_control");
end
  OBUF \A_lights_OBUF[0]_inst 
       (.I(A_lights_OBUF[0]),
        .O(A_lights[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \A_lights_OBUF[0]_inst_i_1 
       (.I0(state),
        .I1(check0),
        .I2(B_lights_OBUF[0]),
        .O(A_lights_OBUF[0]));
  OBUF \A_lights_OBUF[1]_inst 
       (.I(1'b0),
        .O(A_lights[1]));
  OBUF \A_lights_OBUF[2]_inst 
       (.I(A_lights_OBUF[2]),
        .O(A_lights[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \A_lights_OBUF[2]_inst_i_1 
       (.I0(check2),
        .I1(state),
        .I2(B_lights_OBUF[0]),
        .O(A_lights_OBUF[2]));
  OBUF \B_lights_OBUF[0]_inst 
       (.I(B_lights_OBUF[0]),
        .O(B_lights[0]));
  OBUF \B_lights_OBUF[1]_inst 
       (.I(1'b0),
        .O(B_lights[1]));
  OBUF \B_lights_OBUF[2]_inst 
       (.I(B_lights_OBUF[2]),
        .O(B_lights[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h33F7)) 
    \B_lights_OBUF[2]_inst_i_1 
       (.I0(check1),
        .I1(B_lights_OBUF[0]),
        .I2(check0),
        .I3(state),
        .O(B_lights_OBUF[2]));
  LUT6 #(
    .INIT(64'h55555555FFFEAAAE)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(state),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\count_reg_n_0_[2] ),
        .I4(B_lights_OBUF[0]),
        .I5(sw_IBUF[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000AA3A)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state),
        .I1(B_lights_OBUF[0]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(sw_IBUF[1]),
        .I5(sw_IBUF[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "Two:10,Three:11,Four:01,One:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(B_lights_OBUF[0]));
  (* FSM_ENCODED_STATES = "Two:10,Three:11,Four:01,One:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    check0_i_1
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .O(check0_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    check0_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(check0_i_1_n_0),
        .Q(check0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    check1_i_1
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .O(check1_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    check1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(check1_i_1_n_0),
        .Q(check1));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    check2_i_1
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .O(check2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    check2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(check2_i_1_n_0),
        .Q(check2));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \count[0]_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF6)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(sw_IBUF[1]),
        .I3(sw_IBUF[0]),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1001444444444444)) 
    \count[2]_i_1 
       (.I0(\count[2]_i_2_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(state),
        .I3(B_lights_OBUF[0]),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count_reg_n_0_[0] ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[2]_i_2 
       (.I0(sw_IBUF[0]),
        .I1(sw_IBUF[1]),
        .O(\count[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000755700005775)) 
    \num_out[0]_i_1 
       (.I0(num_out_OBUF[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(B_lights_OBUF[0]),
        .I3(state),
        .I4(\count[2]_i_2_n_0 ),
        .I5(\count_reg_n_0_[2] ),
        .O(\num_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0009000900FF)) 
    \num_out[1]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\num_out[1]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\count[2]_i_2_n_0 ),
        .I4(num_out_OBUF[0]),
        .I5(num_out_OBUF[1]),
        .O(\num_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \num_out[1]_i_2 
       (.I0(B_lights_OBUF[0]),
        .I1(state),
        .O(\num_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF006D04)) 
    \num_out[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(B_lights_OBUF[0]),
        .I2(state),
        .I3(\num_out[2]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(\count[2]_i_2_n_0 ),
        .O(\num_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \num_out[2]_i_2 
       (.I0(num_out_OBUF[2]),
        .I1(num_out_OBUF[0]),
        .I2(num_out_OBUF[1]),
        .O(\num_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF006D04)) 
    \num_out[3]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(state),
        .I2(B_lights_OBUF[0]),
        .I3(\num_out[3]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(\count[2]_i_2_n_0 ),
        .O(\num_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \num_out[3]_i_2 
       (.I0(num_out_OBUF[2]),
        .I1(num_out_OBUF[0]),
        .I2(num_out_OBUF[1]),
        .I3(num_out_OBUF[3]),
        .O(\num_out[3]_i_2_n_0 ));
  OBUF \num_out_OBUF[0]_inst 
       (.I(num_out_OBUF[0]),
        .O(num_out[0]));
  OBUF \num_out_OBUF[1]_inst 
       (.I(num_out_OBUF[1]),
        .O(num_out[1]));
  OBUF \num_out_OBUF[2]_inst 
       (.I(num_out_OBUF[2]),
        .O(num_out[2]));
  OBUF \num_out_OBUF[3]_inst 
       (.I(num_out_OBUF[3]),
        .O(num_out[3]));
  FDPE #(
    .INIT(1'b1)) 
    \num_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\num_out[0]_i_1_n_0 ),
        .PRE(rst_a_IBUF),
        .Q(num_out_OBUF[0]));
  FDPE #(
    .INIT(1'b1)) 
    \num_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\num_out[1]_i_1_n_0 ),
        .PRE(rst_a_IBUF),
        .Q(num_out_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \num_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\num_out[2]_i_1_n_0 ),
        .PRE(rst_a_IBUF),
        .Q(num_out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \num_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_a_IBUF),
        .D(\num_out[3]_i_1_n_0 ),
        .Q(num_out_OBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_a_IBUF_inst
       (.I(rst_a),
        .O(rst_a_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
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
