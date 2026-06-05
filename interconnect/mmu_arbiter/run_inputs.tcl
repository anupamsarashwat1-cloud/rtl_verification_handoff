set sigs [list]
lappend sigs "tb_mmu_arbiter.uut.clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
