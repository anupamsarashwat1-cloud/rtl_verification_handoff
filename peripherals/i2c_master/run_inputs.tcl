set sigs [list]
lappend sigs "tb_i2c_master.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
