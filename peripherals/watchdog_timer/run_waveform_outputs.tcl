set sigs [list]
lappend sigs "tb_watchdog_timer.prdata"
lappend sigs "tb_watchdog_timer.pready"
lappend sigs "tb_watchdog_timer.wdt_reset_n"
lappend sigs "tb_watchdog_timer.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
