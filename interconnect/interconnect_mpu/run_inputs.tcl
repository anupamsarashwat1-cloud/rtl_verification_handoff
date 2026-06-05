set sigs [list]
lappend sigs "tb_interconnect_mpu.clk"
lappend sigs "tb_interconnect_mpu.rst_n"
lappend sigs "tb_interconnect_mpu.cfg_base_addr"
lappend sigs "tb_interconnect_mpu.cfg_limit_addr"
lappend sigs "tb_interconnect_mpu.cfg_master_mask"
lappend sigs "tb_interconnect_mpu.cfg_perm"
lappend sigs "tb_interconnect_mpu.cfg_valid"
lappend sigs "tb_interconnect_mpu.s_arvalid"
lappend sigs "tb_interconnect_mpu.s_araddr"
lappend sigs "tb_interconnect_mpu.s_arid"
lappend sigs "tb_interconnect_mpu.m_arready"
lappend sigs "tb_interconnect_mpu.m_rvalid"
lappend sigs "tb_interconnect_mpu.m_rdata"
lappend sigs "tb_interconnect_mpu.m_rresp"
lappend sigs "tb_interconnect_mpu.m_rlast"
lappend sigs "tb_interconnect_mpu.m_rid"
lappend sigs "tb_interconnect_mpu.s_rready"
lappend sigs "tb_interconnect_mpu.s_awvalid"
lappend sigs "tb_interconnect_mpu.s_awaddr"
lappend sigs "tb_interconnect_mpu.s_awid"
lappend sigs "tb_interconnect_mpu.m_awready"
lappend sigs "tb_interconnect_mpu.m_bvalid"
lappend sigs "tb_interconnect_mpu.m_bresp"
lappend sigs "tb_interconnect_mpu.m_bid"
lappend sigs "tb_interconnect_mpu.s_bready"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
