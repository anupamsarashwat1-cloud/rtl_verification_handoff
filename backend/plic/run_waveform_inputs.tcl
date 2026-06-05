set sigs [list]
lappend sigs "tb_plic.clk"
lappend sigs "tb_plic.rst_n"
lappend sigs "tb_plic.interrupt_sources"
lappend sigs "tb_plic.psel"
lappend sigs "tb_plic.penable"
lappend sigs "tb_plic.pwrite"
lappend sigs "tb_plic.paddr"
lappend sigs "tb_plic.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::setWindowStartTime 0
