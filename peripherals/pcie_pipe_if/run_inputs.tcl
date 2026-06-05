set sigs [list]
lappend sigs "tb_pcie_pipe_if.uut.pclk"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
