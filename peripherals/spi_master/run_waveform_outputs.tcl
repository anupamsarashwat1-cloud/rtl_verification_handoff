set sigs [list]
lappend sigs "tb_spi_master.prdata"
lappend sigs "tb_spi_master.pready"
lappend sigs "tb_spi_master.spi_clk"
lappend sigs "tb_spi_master.spi_mosi"
lappend sigs "tb_spi_master.spi_csn"
lappend sigs "tb_spi_master.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
