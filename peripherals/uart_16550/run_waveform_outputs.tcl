set sigs [list]
lappend sigs "tb_uart_16550.prdata"
lappend sigs "tb_uart_16550.pready"
lappend sigs "tb_uart_16550.pslverr"
lappend sigs "tb_uart_16550.uart_irq"
lappend sigs "tb_uart_16550.txd"
lappend sigs "tb_uart_16550.irda_tx"
lappend sigs "tb_uart_16550.lin_tx"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
