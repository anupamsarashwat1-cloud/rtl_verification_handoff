set sigs [list]
lappend sigs "tb_rtc.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
