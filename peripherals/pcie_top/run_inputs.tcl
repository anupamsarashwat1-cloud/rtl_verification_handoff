set sigs [list]
lappend sigs "tb_pcie_top.uut.pcie_clk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
