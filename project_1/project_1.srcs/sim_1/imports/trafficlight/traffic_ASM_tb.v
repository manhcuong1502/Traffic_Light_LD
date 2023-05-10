`timescale 1ps/1ps
module traffic_control_tb;

wire [2:0] A_lights,B_lights;
reg clk,rst_a;
wire [3:0] num_out;
reg [2:0] cases;

//traffic_control uut(A_lights,B_lights,clk,rst_a,num_out,cases);

traffic_control uut(A_lights,B_lights,clk,rst_a);

initial  clk=1'b1;
always #5 clk=~clk;
 
initial
 begin
  rst_a=1'b1;
  //cases = 2'b00;
  
  #15;
  rst_a=1'b0;
  #270;
  //cases = 2'b01;
  #100;
  //cases = 2'b00;
  #270;
  //cases = 2'b10;
  
  #100;
  //cases = 2'b00;
  #270;
  //cases = 2'b11;
  #100;
  //cases = 2'b00;
  #2000;
  $finish;
 end
endmodule