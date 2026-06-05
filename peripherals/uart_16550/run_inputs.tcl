set sigs [list]
lappend sigs "tb_uart_16550.clk"
lappend sigs "tb_uart_16550.rst_n"
lappend sigs "tb_uart_16550.paddr"
lappend sigs "tb_uart_16550.psel"
lappend sigs "tb_uart_16550.penable"
lappend sigs "tb_uart_16550.pwrite"
lappend sigs "tb_uart_16550.pwdata"
lappend sigs "tb_uart_16550.rxd"
lappend sigs "tb_uart_16550.irda_rx"
lappend sigs "tb_uart_16550.lin_rx"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
