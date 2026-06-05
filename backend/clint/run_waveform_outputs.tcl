set sigs [list]
lappend sigs "tb_clint.prdata"
lappend sigs "tb_clint.pready"
lappend sigs "tb_clint.msip"
lappend sigs "tb_clint.mtip"
lappend sigs "tb_clint.clk"
lappend sigs "tb_clint.rst_n"
lappend sigs "tb_clint.psel"
lappend sigs "tb_clint.penable"
lappend sigs "tb_clint.pwrite"
lappend sigs "tb_clint.paddr"
lappend sigs "tb_clint.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -3.0
gtkwave::setWindowStartTime 0
