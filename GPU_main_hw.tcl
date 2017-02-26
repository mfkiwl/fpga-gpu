# TCL File Generated by Component Editor 16.0
# Tue Feb 21 20:51:46 EST 2017
# DO NOT MODIFY


# 
# VGA_Controller "VGA_Controller" v0.7.1
# Evan Andersen 2017.02.21.20:51:46
# 800x600 VGA controller
# 

# 
# request TCL package from ACDS 16.0
# 
package require -exact qsys 16.0


# 
# module VGA_Controller
# 
set_module_property DESCRIPTION "800x600 VGA controller"
set_module_property NAME VGA_Controller
set_module_property VERSION 0.7.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Evan Andersen"
set_module_property DISPLAY_NAME VGA_Controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL VGA_Controller
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property quartus_synth ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file VGA_Controller.v VERILOG PATH hardware/written/VGA_Controller.v TOP_LEVEL_FILE


# 
# parameters
# 


# 
# display items
# 


# 
# connection point slave
# 
add_interface slave avalon end
set_interface_property slave addressUnits WORDS
set_interface_property slave associatedClock clk
set_interface_property slave associatedReset reset_sink
set_interface_property slave bitsPerSymbol 8
set_interface_property slave burstOnBurstBoundariesOnly false
set_interface_property slave burstcountUnits WORDS
set_interface_property slave explicitAddressSpan 0
set_interface_property slave holdTime 0
set_interface_property slave linewrapBursts false
set_interface_property slave maximumPendingReadTransactions 0
set_interface_property slave maximumPendingWriteTransactions 0
set_interface_property slave readLatency 0
set_interface_property slave readWaitStates 0
set_interface_property slave readWaitTime 0
set_interface_property slave setupTime 0
set_interface_property slave timingUnits Cycles
set_interface_property slave writeWaitTime 0
set_interface_property slave ENABLED true
set_interface_property slave EXPORT_OF ""
set_interface_property slave PORT_NAME_MAP ""
set_interface_property slave CMSIS_SVD_VARIABLES ""
set_interface_property slave SVD_ADDRESS_GROUP ""

add_interface_port slave slave_address address Input 2
add_interface_port slave slave_read_en read Input 1
add_interface_port slave slave_write_en write Input 1
add_interface_port slave slave_read_data readdata Output 32
add_interface_port slave slave_write_data writedata Input 32
set_interface_assignment slave embeddedsw.configuration.isFlash 0
set_interface_assignment slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point master
# 
add_interface master avalon start
set_interface_property master addressUnits SYMBOLS
set_interface_property master associatedClock clk
set_interface_property master associatedReset reset_sink
set_interface_property master bitsPerSymbol 8
set_interface_property master burstOnBurstBoundariesOnly false
set_interface_property master burstcountUnits WORDS
set_interface_property master doStreamReads false
set_interface_property master doStreamWrites false
set_interface_property master holdTime 0
set_interface_property master linewrapBursts false
set_interface_property master maximumPendingReadTransactions 0
set_interface_property master maximumPendingWriteTransactions 0
set_interface_property master readLatency 0
set_interface_property master readWaitTime 1
set_interface_property master setupTime 0
set_interface_property master timingUnits Cycles
set_interface_property master writeWaitTime 0
set_interface_property master ENABLED true
set_interface_property master EXPORT_OF ""
set_interface_property master PORT_NAME_MAP ""
set_interface_property master CMSIS_SVD_VARIABLES ""
set_interface_property master SVD_ADDRESS_GROUP ""

add_interface_port master master_read_data_valid readdatavalid Input 1
add_interface_port master master_address address Output 32
add_interface_port master master_read read Output 1
add_interface_port master master_read_data readdata Input 32
add_interface_port master master_wait_request waitrequest Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clk
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink resetn reset_n Input 1


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk clk Input 1


# 
# connection point external_connection
# 
add_interface external_connection conduit end
set_interface_property external_connection associatedClock clk
set_interface_property external_connection associatedReset reset_sink
set_interface_property external_connection ENABLED true
set_interface_property external_connection EXPORT_OF ""
set_interface_property external_connection PORT_NAME_MAP ""
set_interface_property external_connection CMSIS_SVD_VARIABLES ""
set_interface_property external_connection SVD_ADDRESS_GROUP ""

add_interface_port external_connection VGA_SYNC_N sync_n Output 1
add_interface_port external_connection VGA_R r Output 8
add_interface_port external_connection VGA_G g Output 8
add_interface_port external_connection VGA_B b Output 8
add_interface_port external_connection VGA_HS hs Output 1
add_interface_port external_connection VGA_VS vs Output 1
add_interface_port external_connection VGA_BLANK_N blank_n Output 1


# 
# connection point vga_reset
# 
add_interface vga_reset reset end
set_interface_property vga_reset associatedClock vga_clk
set_interface_property vga_reset synchronousEdges DEASSERT
set_interface_property vga_reset ENABLED true
set_interface_property vga_reset EXPORT_OF ""
set_interface_property vga_reset PORT_NAME_MAP ""
set_interface_property vga_reset CMSIS_SVD_VARIABLES ""
set_interface_property vga_reset SVD_ADDRESS_GROUP ""

add_interface_port vga_reset vga_resetn reset_n Input 1


# 
# connection point vga_clk
# 
add_interface vga_clk clock end
set_interface_property vga_clk clockRate 0
set_interface_property vga_clk ENABLED true
set_interface_property vga_clk EXPORT_OF ""
set_interface_property vga_clk PORT_NAME_MAP ""
set_interface_property vga_clk CMSIS_SVD_VARIABLES ""
set_interface_property vga_clk SVD_ADDRESS_GROUP ""

add_interface_port vga_clk VGA_CLK clk Input 1

