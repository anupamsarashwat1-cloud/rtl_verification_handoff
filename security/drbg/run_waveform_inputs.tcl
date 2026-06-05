set sigs [list]
lappend sigs "tb_drbg.clk"
lappend sigs "tb_drbg.rst_n"
lappend sigs "tb_drbg.paddr"
lappend sigs "tb_drbg.psel"
lappend sigs "tb_drbg.penable"
lappend sigs "tb_drbg.pwrite"
lappend sigs "tb_drbg.pwdata"
lappend sigs "tb_drbg.trng_entropy"
lappend sigs "tb_drbg.trng_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
