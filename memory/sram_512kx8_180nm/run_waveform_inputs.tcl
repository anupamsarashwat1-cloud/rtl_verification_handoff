set sigs [list]
lappend sigs "tb_sram_512kx8_180nm.CLK"
lappend sigs "tb_sram_512kx8_180nm.CEN"
lappend sigs "tb_sram_512kx8_180nm.WEN"
lappend sigs "tb_sram_512kx8_180nm.A"
lappend sigs "tb_sram_512kx8_180nm.D"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
