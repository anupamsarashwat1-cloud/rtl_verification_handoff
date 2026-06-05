set sigs [list]
lappend sigs "tb_sha256_engine.clk"
lappend sigs "tb_sha256_engine.rst_n"
lappend sigs "tb_sha256_engine.psel"
lappend sigs "tb_sha256_engine.penable"
lappend sigs "tb_sha256_engine.pwrite"
lappend sigs "tb_sha256_engine.paddr"
lappend sigs "tb_sha256_engine.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
