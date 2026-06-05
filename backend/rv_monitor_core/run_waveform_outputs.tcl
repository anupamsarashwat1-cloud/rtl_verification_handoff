set sigs [list]
lappend sigs "tb_rv_monitor_core.imem_araddr"
lappend sigs "tb_rv_monitor_core.imem_arvalid"
lappend sigs "tb_rv_monitor_core.dmem_awvalid"
lappend sigs "tb_rv_monitor_core.dmem_awaddr"
lappend sigs "tb_rv_monitor_core.dmem_awlen"
lappend sigs "tb_rv_monitor_core.dmem_awsize"
lappend sigs "tb_rv_monitor_core.dmem_awburst"
lappend sigs "tb_rv_monitor_core.dmem_wvalid"
lappend sigs "tb_rv_monitor_core.dmem_wdata"
lappend sigs "tb_rv_monitor_core.dmem_wstrb"
lappend sigs "tb_rv_monitor_core.dmem_wlast"
lappend sigs "tb_rv_monitor_core.dmem_bready"
lappend sigs "tb_rv_monitor_core.dmem_arvalid"
lappend sigs "tb_rv_monitor_core.dmem_araddr"
lappend sigs "tb_rv_monitor_core.dmem_arlen"
lappend sigs "tb_rv_monitor_core.dmem_arsize"
lappend sigs "tb_rv_monitor_core.dmem_arburst"
lappend sigs "tb_rv_monitor_core.dmem_rready"
lappend sigs "tb_rv_monitor_core.hart_halted"
lappend sigs "tb_rv_monitor_core.hart_running"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
