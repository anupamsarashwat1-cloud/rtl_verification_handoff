set sigs [list]
lappend sigs "tb_ahb_to_apb.hrdata"
lappend sigs "tb_ahb_to_apb.hready_out"
lappend sigs "tb_ahb_to_apb.hresp"
lappend sigs "tb_ahb_to_apb.paddr"
lappend sigs "tb_ahb_to_apb.psel"
lappend sigs "tb_ahb_to_apb.penable"
lappend sigs "tb_ahb_to_apb.pwrite"
lappend sigs "tb_ahb_to_apb.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
