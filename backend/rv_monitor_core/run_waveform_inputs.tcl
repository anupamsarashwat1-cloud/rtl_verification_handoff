set sigs [list]
lappend sigs "tb_rv_monitor_core.clk"
lappend sigs "tb_rv_monitor_core.rst_n"
lappend sigs "tb_rv_monitor_core.irq_m_ext"
lappend sigs "tb_rv_monitor_core.irq_m_timer"
lappend sigs "tb_rv_monitor_core.irq_m_soft"
lappend sigs "tb_rv_monitor_core.imem_arready"
lappend sigs "tb_rv_monitor_core.imem_rdata"
lappend sigs "tb_rv_monitor_core.imem_rvalid"
lappend sigs "tb_rv_monitor_core.imem_rresp"
lappend sigs "tb_rv_monitor_core.dmem_awready"
lappend sigs "tb_rv_monitor_core.dmem_wready"
lappend sigs "tb_rv_monitor_core.dmem_bvalid"
lappend sigs "tb_rv_monitor_core.dmem_bresp"
lappend sigs "tb_rv_monitor_core.dmem_arready"
lappend sigs "tb_rv_monitor_core.dmem_rvalid"
lappend sigs "tb_rv_monitor_core.dmem_rdata"
lappend sigs "tb_rv_monitor_core.dmem_rlast"
lappend sigs "tb_rv_monitor_core.dmem_rresp"
lappend sigs "tb_rv_monitor_core.halt_req"
lappend sigs "tb_rv_monitor_core.resume_req"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
