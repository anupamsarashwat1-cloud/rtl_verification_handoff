set sigs [list]
lappend sigs "tb_trng.clk"
lappend sigs "tb_trng.rst_n"
lappend sigs "tb_trng.paddr"
lappend sigs "tb_trng.psel"
lappend sigs "tb_trng.penable"
lappend sigs "tb_trng.pwrite"
lappend sigs "tb_trng.pwdata"
lappend sigs "tb_trng.trng_ready"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
