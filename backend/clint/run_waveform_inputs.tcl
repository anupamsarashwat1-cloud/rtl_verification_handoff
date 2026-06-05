set sigs [list]
lappend sigs "tb_clint.clk"
lappend sigs "tb_clint.rst_n"
lappend sigs "tb_clint.psel"
lappend sigs "tb_clint.penable"
lappend sigs "tb_clint.pwrite"
lappend sigs "tb_clint.paddr"
lappend sigs "tb_clint.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -10
gtkwave::setWindowStartTime 0
