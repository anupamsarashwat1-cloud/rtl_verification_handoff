set sigs [list]
lappend sigs "tb_trng.uut.clk"
lappend sigs "tb_trng.uut.rst_n"
lappend sigs "tb_trng.uut.paddr"
lappend sigs "tb_trng.uut.psel"
lappend sigs "tb_trng.uut.penable"
lappend sigs "tb_trng.uut.pwrite"
lappend sigs "tb_trng.uut.pwdata"
lappend sigs "tb_trng.uut.trng_ready"
lappend sigs "tb_trng.uut.prdata"
lappend sigs "tb_trng.uut.pready"
lappend sigs "tb_trng.uut.pslverr"
lappend sigs "tb_trng.uut.trng_entropy"
lappend sigs "tb_trng.uut.trng_valid"
lappend sigs "tb_trng.uut.trng_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
