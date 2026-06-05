set sigs [list]
lappend sigs "tb_watchdog_timer.prdata"
lappend sigs "tb_watchdog_timer.pready"
lappend sigs "tb_watchdog_timer.wdt_reset_n"
lappend sigs "tb_watchdog_timer.irq"
lappend sigs "tb_watchdog_timer.clk"
lappend sigs "tb_watchdog_timer.rst_n"
lappend sigs "tb_watchdog_timer.psel"
lappend sigs "tb_watchdog_timer.penable"
lappend sigs "tb_watchdog_timer.pwrite"
lappend sigs "tb_watchdog_timer.paddr"
lappend sigs "tb_watchdog_timer.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
