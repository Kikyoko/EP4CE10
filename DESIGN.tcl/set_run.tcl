
########################################################################################################################
# add verilog header file
set_global_assignment -name VERILOG_INCLUDE_FILE    DESIGN.srcs/sources_1/DEFINE_FUNC.vh
set_global_assignment -name VERILOG_INCLUDE_FILE    DESIGN.srcs/sources_1/FPGA_DEFINE.vh

# add top file
set_global_assignment -name SYSTEMVERILOG_FILE      DESIGN.srcs/sources_1/DESIGN_TOP.sv

# add top file
set_global_assignment -name TOP_LEVEL_ENTITY        DESIGN_TOP

# add RTL file

# add IP file
