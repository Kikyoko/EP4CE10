
########################################################################################################################
## clock & reset interface
set_location_assignment PIN_E1      -to hard_clk
set_location_assignment PIN_M1      -to hard_rst_n

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to hard_*

########################################################################################################################
## LED interface
set_location_assignment PIN_D11     -to o_led[0]
set_location_assignment PIN_C11     -to o_led[1]
set_location_assignment PIN_E10     -to o_led[2]
set_location_assignment PIN_F9      -to o_led[3]

set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to o_led*
