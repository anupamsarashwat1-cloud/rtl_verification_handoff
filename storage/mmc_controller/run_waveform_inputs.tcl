set sigs [list]
lappend sigs "tb_mmc_controller.clk"
lappend sigs "tb_mmc_controller.rst_n"
lappend sigs "tb_mmc_controller.m_awready"
lappend sigs "tb_mmc_controller.m_wready"
lappend sigs "tb_mmc_controller.m_bvalid"
lappend sigs "tb_mmc_controller.m_bresp"
lappend sigs "tb_mmc_controller.m_bid"
lappend sigs "tb_mmc_controller.m_arready"
lappend sigs "tb_mmc_controller.m_rvalid"
lappend sigs "tb_mmc_controller.m_rdata"
lappend sigs "tb_mmc_controller.m_rresp"
lappend sigs "tb_mmc_controller.m_rlast"
lappend sigs "tb_mmc_controller.m_rid"
lappend sigs "tb_mmc_controller.paddr"
lappend sigs "tb_mmc_controller.psel"
lappend sigs "tb_mmc_controller.penable"
lappend sigs "tb_mmc_controller.pwrite"
lappend sigs "tb_mmc_controller.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
