set sigs [list]
lappend sigs "tb_sha256_engine.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
