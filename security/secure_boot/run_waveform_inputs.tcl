set sigs [list]
lappend sigs "tb_secure_boot.clk"
lappend sigs "tb_secure_boot.rst_n"
lappend sigs "tb_secure_boot.paddr"
lappend sigs "tb_secure_boot.psel"
lappend sigs "tb_secure_boot.penable"
lappend sigs "tb_secure_boot.pwrite"
lappend sigs "tb_secure_boot.pwdata"
lappend sigs "tb_secure_boot.envm_rdata"
lappend sigs "tb_secure_boot.envm_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
