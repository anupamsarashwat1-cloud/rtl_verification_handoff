set sigs [list]
lappend sigs "tb_ahb_to_apb.clk"
lappend sigs "tb_ahb_to_apb.rst_n"
lappend sigs "tb_ahb_to_apb.haddr"
lappend sigs "tb_ahb_to_apb.hwrite"
lappend sigs "tb_ahb_to_apb.htrans"
lappend sigs "tb_ahb_to_apb.hwdata"
lappend sigs "tb_ahb_to_apb.prdata"
lappend sigs "tb_ahb_to_apb.pready"
lappend sigs "tb_ahb_to_apb.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
