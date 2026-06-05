set sigs [list]
lappend sigs "tb_plic.uut.clk"
lappend sigs "tb_plic.uut.rst_n"
lappend sigs "tb_plic.uut.interrupt_sources"
lappend sigs "tb_plic.uut.psel"
lappend sigs "tb_plic.uut.penable"
lappend sigs "tb_plic.uut.pwrite"
lappend sigs "tb_plic.uut.paddr"
lappend sigs "tb_plic.uut.pwdata"
lappend sigs "tb_plic.uut.prdata"
lappend sigs "tb_plic.uut.pready"
lappend sigs "tb_plic.uut.irq_targets"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
