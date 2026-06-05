set sigs [list]
lappend sigs "tb_i2c_master.uut.clk"
lappend sigs "tb_i2c_master.uut.rst_n"
lappend sigs "tb_i2c_master.uut.psel"
lappend sigs "tb_i2c_master.uut.penable"
lappend sigs "tb_i2c_master.uut.pwrite"
lappend sigs "tb_i2c_master.uut.paddr"
lappend sigs "tb_i2c_master.uut.pwdata"
lappend sigs "tb_i2c_master.uut.prdata"
lappend sigs "tb_i2c_master.uut.pready"
lappend sigs "tb_i2c_master.uut.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
