set sigs [list]
lappend sigs "tb_gpio_ctrl.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
