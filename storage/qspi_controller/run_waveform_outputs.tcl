set sigs [list]
lappend sigs "tb_qspi_controller.s_arready"
lappend sigs "tb_qspi_controller.s_rvalid"
lappend sigs "tb_qspi_controller.s_rdata"
lappend sigs "tb_qspi_controller.s_rresp"
lappend sigs "tb_qspi_controller.prdata"
lappend sigs "tb_qspi_controller.pready"
lappend sigs "tb_qspi_controller.pslverr"
lappend sigs "tb_qspi_controller.qspi_sclk"
lappend sigs "tb_qspi_controller.qspi_cs_n"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
