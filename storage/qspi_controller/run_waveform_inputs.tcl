set sigs [list]
lappend sigs "tb_qspi_controller.clk"
lappend sigs "tb_qspi_controller.rst_n"
lappend sigs "tb_qspi_controller.s_arvalid"
lappend sigs "tb_qspi_controller.s_araddr"
lappend sigs "tb_qspi_controller.s_rready"
lappend sigs "tb_qspi_controller.paddr"
lappend sigs "tb_qspi_controller.psel"
lappend sigs "tb_qspi_controller.penable"
lappend sigs "tb_qspi_controller.pwrite"
lappend sigs "tb_qspi_controller.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
