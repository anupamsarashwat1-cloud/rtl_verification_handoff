set sigs [list]
lappend sigs "tb_clint.uut.clk"
lappend sigs "tb_clint.uut.rst_n"
lappend sigs "tb_clint.uut.psel"
lappend sigs "tb_clint.uut.penable"
lappend sigs "tb_clint.uut.pwrite"
lappend sigs "tb_clint.uut.paddr"
lappend sigs "tb_clint.uut.pwdata"
lappend sigs "tb_clint.uut.prdata"
lappend sigs "tb_clint.uut.pready"
lappend sigs "tb_clint.uut.msip"
lappend sigs "tb_clint.uut.mtip"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
