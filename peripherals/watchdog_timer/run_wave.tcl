set sigs [list]
lappend sigs "tb_watchdog_timer.uut.clk"
lappend sigs "tb_watchdog_timer.uut.rst_n"
lappend sigs "tb_watchdog_timer.uut.psel"
lappend sigs "tb_watchdog_timer.uut.penable"
lappend sigs "tb_watchdog_timer.uut.pwrite"
lappend sigs "tb_watchdog_timer.uut.paddr"
lappend sigs "tb_watchdog_timer.uut.pwdata"
lappend sigs "tb_watchdog_timer.uut.prdata"
lappend sigs "tb_watchdog_timer.uut.pready"
lappend sigs "tb_watchdog_timer.uut.wdt_reset_n"
lappend sigs "tb_watchdog_timer.uut.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
