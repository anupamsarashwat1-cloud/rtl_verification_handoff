set sigs [list]
lappend sigs "tb_clint.clk"
lappend sigs "tb_clint.rst_n"
lappend sigs "tb_clint.psel"
lappend sigs "tb_clint.penable"
lappend sigs "tb_clint.pwrite"
lappend sigs "tb_clint.paddr"
lappend sigs "tb_clint.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
