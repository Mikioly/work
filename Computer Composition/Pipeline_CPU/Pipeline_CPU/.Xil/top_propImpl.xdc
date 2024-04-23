set_property SRC_FILE_INFO {cfile:D:/Vivado/Pipeline_CPU/file/icf-v-p.xdc rfile:../../file/icf-v-p.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sw_i_IBUF[15]];#add for temp
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { sw_i[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
