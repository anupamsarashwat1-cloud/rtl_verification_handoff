set sigs [list]
lappend sigs "tb_i2c_master.clk"
lappend sigs "tb_i2c_master.rst_n"
lappend sigs "tb_i2c_master.psel"
lappend sigs "tb_i2c_master.penable"
lappend sigs "tb_i2c_master.pwrite"
lappend sigs "tb_i2c_master.paddr"
lappend sigs "tb_i2c_master.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
