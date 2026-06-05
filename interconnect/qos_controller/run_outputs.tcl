set sigs [list]
lappend sigs "tb_qos_controller.m_arqos"
lappend sigs "tb_qos_controller.m_awqos"
lappend sigs "tb_qos_controller.clk"
lappend sigs "tb_qos_controller.rst_n"
lappend sigs "tb_qos_controller.cfg_base_qos"
lappend sigs "tb_qos_controller.cfg_boost_qos"
lappend sigs "tb_qos_controller.cfg_bw_limit"
lappend sigs "tb_qos_controller.cfg_time_win"
lappend sigs "tb_qos_controller.m_arvalid"
lappend sigs "tb_qos_controller.m_arready"
lappend sigs "tb_qos_controller.m_awvalid"
lappend sigs "tb_qos_controller.m_awready"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
