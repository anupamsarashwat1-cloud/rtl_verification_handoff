set sigs [list]
lappend sigs "tb_apb_bridge.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
