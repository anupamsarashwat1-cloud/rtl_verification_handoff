set sigs [list]
lappend sigs "tb_axi4_to_ahb.s_awready"
lappend sigs "tb_axi4_to_ahb.s_wready"
lappend sigs "tb_axi4_to_ahb.s_bvalid"
lappend sigs "tb_axi4_to_ahb.s_bresp"
lappend sigs "tb_axi4_to_ahb.s_bid"
lappend sigs "tb_axi4_to_ahb.s_arready"
lappend sigs "tb_axi4_to_ahb.s_rvalid"
lappend sigs "tb_axi4_to_ahb.s_rdata"
lappend sigs "tb_axi4_to_ahb.s_rresp"
lappend sigs "tb_axi4_to_ahb.s_rlast"
lappend sigs "tb_axi4_to_ahb.haddr"
lappend sigs "tb_axi4_to_ahb.hwrite"
lappend sigs "tb_axi4_to_ahb.htrans"
lappend sigs "tb_axi4_to_ahb.hsize"
lappend sigs "tb_axi4_to_ahb.hburst"
lappend sigs "tb_axi4_to_ahb.hwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
