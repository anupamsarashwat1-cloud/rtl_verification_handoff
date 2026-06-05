set sigs [list]
lappend sigs "tb_spi_master.clk"
lappend sigs "tb_spi_master.rst_n"
lappend sigs "tb_spi_master.psel"
lappend sigs "tb_spi_master.penable"
lappend sigs "tb_spi_master.pwrite"
lappend sigs "tb_spi_master.paddr"
lappend sigs "tb_spi_master.pwdata"
lappend sigs "tb_spi_master.spi_miso"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
