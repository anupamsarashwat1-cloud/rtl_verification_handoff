set sigs [list]
lappend sigs "tb_secure_boot.prdata"
lappend sigs "tb_secure_boot.pready"
lappend sigs "tb_secure_boot.pslverr"
lappend sigs "tb_secure_boot.envm_addr"
lappend sigs "tb_secure_boot.envm_req"
lappend sigs "tb_secure_boot.boot_pass"
lappend sigs "tb_secure_boot.boot_fail"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
