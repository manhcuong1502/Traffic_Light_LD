## Clock Signal
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]

## RGB LEDs
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports {A_lights[2]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {A_lights[1]}]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {A_lights[0]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {B_lights[2]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports {B_lights[1]}]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports {B_lights[0]}]

## Buttons
set_property -dict { PACKAGE_PIN D19    IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L4P_T0_35 Sch=BTN0

## Switches on ARTY Z7-20
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports {sw[0]}]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports rst_a]
set_property IOSTANDARD LVCMOS33 [get_ports {num_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {num_out[0]}]
set_property PACKAGE_PIN D19 [get_ports rst_a]
set_property PACKAGE_PIN N16 [get_ports {num_out[3]}]
set_property PACKAGE_PIN N17 [get_ports {num_out[2]}]
set_property PACKAGE_PIN N18 [get_ports {num_out[1]}]
set_property PACKAGE_PIN N20 [get_ports {num_out[0]}]
