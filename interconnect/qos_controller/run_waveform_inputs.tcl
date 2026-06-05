set sigs [list]
lappend sigs "tb_qos_controller.clk"
lappend sigs "tb_qos_controller.rst_n"
lappend sigs "tb_qos_controller.cfg_time_win"
lappend sigs "tb_qos_controller.m_arvalid"
lappend sigs "tb_qos_controller.m_arready"
lappend sigs "tb_qos_controller.m_awvalid"
lappend sigs "tb_qos_controller.m_awready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
