set sigs [list]
lappend sigs "tb_ddr_scheduler.cmd_ready"
lappend sigs "tb_ddr_scheduler.rd_data"
lappend sigs "tb_ddr_scheduler.rd_valid"
lappend sigs "tb_ddr_scheduler.dfi_cs_n"
lappend sigs "tb_ddr_scheduler.dfi_ras_n"
lappend sigs "tb_ddr_scheduler.dfi_cas_n"
lappend sigs "tb_ddr_scheduler.dfi_we_n"
lappend sigs "tb_ddr_scheduler.dfi_act_n"
lappend sigs "tb_ddr_scheduler.dfi_bank"
lappend sigs "tb_ddr_scheduler.dfi_addr"
lappend sigs "tb_ddr_scheduler.dfi_wrdata_valid"
lappend sigs "tb_ddr_scheduler.dfi_wrdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
