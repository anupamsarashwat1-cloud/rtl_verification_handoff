set sigs [list]
lappend sigs "tb_ddr_scheduler.clk"
lappend sigs "tb_ddr_scheduler.rst_n"
lappend sigs "tb_ddr_scheduler.cmd_valid"
lappend sigs "tb_ddr_scheduler.cmd_type"
lappend sigs "tb_ddr_scheduler.cmd_bank"
lappend sigs "tb_ddr_scheduler.cmd_row"
lappend sigs "tb_ddr_scheduler.cmd_col"
lappend sigs "tb_ddr_scheduler.wr_data"
lappend sigs "tb_ddr_scheduler.dfi_rddata"
lappend sigs "tb_ddr_scheduler.dfi_rddata_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
