set sigs [list]
lappend sigs "tb_spi_master.uut.clk"
lappend sigs "tb_spi_master.uut.rst_n"
lappend sigs "tb_spi_master.uut.psel"
lappend sigs "tb_spi_master.uut.penable"
lappend sigs "tb_spi_master.uut.pwrite"
lappend sigs "tb_spi_master.uut.paddr"
lappend sigs "tb_spi_master.uut.pwdata"
lappend sigs "tb_spi_master.uut.spi_miso"
lappend sigs "tb_spi_master.uut.prdata"
lappend sigs "tb_spi_master.uut.pready"
lappend sigs "tb_spi_master.uut.spi_clk"
lappend sigs "tb_spi_master.uut.spi_mosi"
lappend sigs "tb_spi_master.uut.spi_csn"
lappend sigs "tb_spi_master.uut.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
