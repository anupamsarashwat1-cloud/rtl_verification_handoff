set sigs [list]
lappend sigs "tb_interconnect_mpu.s_arready"
lappend sigs "tb_interconnect_mpu.m_arvalid"
lappend sigs "tb_interconnect_mpu.m_araddr"
lappend sigs "tb_interconnect_mpu.m_arid"
lappend sigs "tb_interconnect_mpu.m_rready"
lappend sigs "tb_interconnect_mpu.s_rvalid"
lappend sigs "tb_interconnect_mpu.s_rdata"
lappend sigs "tb_interconnect_mpu.s_rresp"
lappend sigs "tb_interconnect_mpu.s_rlast"
lappend sigs "tb_interconnect_mpu.s_rid"
lappend sigs "tb_interconnect_mpu.s_awready"
lappend sigs "tb_interconnect_mpu.m_awvalid"
lappend sigs "tb_interconnect_mpu.m_awaddr"
lappend sigs "tb_interconnect_mpu.m_awid"
lappend sigs "tb_interconnect_mpu.m_bready"
lappend sigs "tb_interconnect_mpu.s_bvalid"
lappend sigs "tb_interconnect_mpu.s_bresp"
lappend sigs "tb_interconnect_mpu.s_bid"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
