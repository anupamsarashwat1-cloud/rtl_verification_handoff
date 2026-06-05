set sigs [list]
lappend sigs "tb_interconnect_mpu.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
