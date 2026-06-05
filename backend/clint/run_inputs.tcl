set sigs [list]
lappend sigs "tb_clint.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
