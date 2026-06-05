set sigs [list]
lappend sigs "tb_axi4_to_ahb.clk"
lappend sigs "tb_axi4_to_ahb.rst_n"
lappend sigs "tb_axi4_to_ahb.s_awvalid"
lappend sigs "tb_axi4_to_ahb.s_awaddr"
lappend sigs "tb_axi4_to_ahb.s_awid"
lappend sigs "tb_axi4_to_ahb.s_wvalid"
lappend sigs "tb_axi4_to_ahb.s_wdata"
lappend sigs "tb_axi4_to_ahb.s_wstrb"
lappend sigs "tb_axi4_to_ahb.s_bready"
lappend sigs "tb_axi4_to_ahb.s_arvalid"
lappend sigs "tb_axi4_to_ahb.s_araddr"
lappend sigs "tb_axi4_to_ahb.s_arid"
lappend sigs "tb_axi4_to_ahb.s_rready"
lappend sigs "tb_axi4_to_ahb.hrdata"
lappend sigs "tb_axi4_to_ahb.hready"
lappend sigs "tb_axi4_to_ahb.hresp"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
