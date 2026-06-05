set sigs [list]
lappend sigs "tb_watchdog_timer.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
