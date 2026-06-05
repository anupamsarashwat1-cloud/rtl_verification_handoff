set sigs [list]
lappend sigs "tb_qos_controller.uut.clk"
lappend sigs "tb_qos_controller.uut.rst_n"
lappend sigs "tb_qos_controller.uut.cfg_base_qos"
lappend sigs "tb_qos_controller.uut.cfg_boost_qos"
lappend sigs "tb_qos_controller.uut.cfg_bw_limit"
lappend sigs "tb_qos_controller.uut.cfg_time_win"
lappend sigs "tb_qos_controller.uut.m_arvalid"
lappend sigs "tb_qos_controller.uut.m_arready"
lappend sigs "tb_qos_controller.uut.m_awvalid"
lappend sigs "tb_qos_controller.uut.m_awready"
lappend sigs "tb_qos_controller.uut.m_arqos"
lappend sigs "tb_qos_controller.uut.m_awqos"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
