set sigs [list]
lappend sigs "tb_uart_16550.clk"
lappend sigs "tb_uart_16550.rst_n"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::setWindowStartTime 0
