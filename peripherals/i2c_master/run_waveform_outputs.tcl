set sigs [list]
lappend sigs "tb_i2c_master.prdata"
lappend sigs "tb_i2c_master.pready"
lappend sigs "tb_i2c_master.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
