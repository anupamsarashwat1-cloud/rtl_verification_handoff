set sigs [list]
lappend sigs "tb_rtc.uut.clk"
lappend sigs "tb_rtc.uut.rtc_clk"
lappend sigs "tb_rtc.uut.rst_n"
lappend sigs "tb_rtc.uut.paddr"
lappend sigs "tb_rtc.uut.psel"
lappend sigs "tb_rtc.uut.penable"
lappend sigs "tb_rtc.uut.pwrite"
lappend sigs "tb_rtc.uut.pwdata"
lappend sigs "tb_rtc.uut.prdata"
lappend sigs "tb_rtc.uut.pready"
lappend sigs "tb_rtc.uut.pslverr"
lappend sigs "tb_rtc.uut.timer_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
