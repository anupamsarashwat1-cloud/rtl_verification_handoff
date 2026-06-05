set sigs [list]
lappend sigs "tb_rtc.prdata"
lappend sigs "tb_rtc.pready"
lappend sigs "tb_rtc.pslverr"
lappend sigs "tb_rtc.timer_irq"
lappend sigs "tb_rtc.clk"
lappend sigs "tb_rtc.rtc_clk"
lappend sigs "tb_rtc.rst_n"
lappend sigs "tb_rtc.paddr"
lappend sigs "tb_rtc.psel"
lappend sigs "tb_rtc.penable"
lappend sigs "tb_rtc.pwrite"
lappend sigs "tb_rtc.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
