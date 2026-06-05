set sigs [list]
lappend sigs "tb_sha256_engine.uut.clk"
lappend sigs "tb_sha256_engine.uut.rst_n"
lappend sigs "tb_sha256_engine.uut.psel"
lappend sigs "tb_sha256_engine.uut.penable"
lappend sigs "tb_sha256_engine.uut.pwrite"
lappend sigs "tb_sha256_engine.uut.paddr"
lappend sigs "tb_sha256_engine.uut.pwdata"
lappend sigs "tb_sha256_engine.uut.prdata"
lappend sigs "tb_sha256_engine.uut.pready"
lappend sigs "tb_sha256_engine.uut.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
