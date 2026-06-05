set sigs [list]
lappend sigs "tb_ecdsa_engine.clk"
lappend sigs "tb_ecdsa_engine.rst_n"
lappend sigs "tb_ecdsa_engine.paddr"
lappend sigs "tb_ecdsa_engine.psel"
lappend sigs "tb_ecdsa_engine.penable"
lappend sigs "tb_ecdsa_engine.pwrite"
lappend sigs "tb_ecdsa_engine.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
