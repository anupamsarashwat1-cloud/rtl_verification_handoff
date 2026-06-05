set sigs [list]
lappend sigs "tb_trng.prdata"
lappend sigs "tb_trng.pready"
lappend sigs "tb_trng.pslverr"
lappend sigs "tb_trng.trng_entropy"
lappend sigs "tb_trng.trng_valid"
lappend sigs "tb_trng.trng_irq"
lappend sigs "tb_trng.clk"
lappend sigs "tb_trng.rst_n"
lappend sigs "tb_trng.paddr"
lappend sigs "tb_trng.psel"
lappend sigs "tb_trng.penable"
lappend sigs "tb_trng.pwrite"
lappend sigs "tb_trng.pwdata"
lappend sigs "tb_trng.trng_ready"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
