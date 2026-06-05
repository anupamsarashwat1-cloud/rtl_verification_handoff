set sigs [list]
lappend sigs "tb_axi4_crossbar.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
