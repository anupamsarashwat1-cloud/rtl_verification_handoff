set sigs [list]
lappend sigs "tb_can_controller.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
