set sigs [list]
lappend sigs "tb_rtc.prdata"
lappend sigs "tb_rtc.pready"
lappend sigs "tb_rtc.pslverr"
lappend sigs "tb_rtc.timer_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
