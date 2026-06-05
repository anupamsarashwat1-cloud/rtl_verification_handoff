set sigs [list]
lappend sigs "tb_gem_sgmii_pcs.uut.reset_n"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
