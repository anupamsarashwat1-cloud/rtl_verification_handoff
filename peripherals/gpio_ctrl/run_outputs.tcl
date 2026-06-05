set sigs [list]
lappend sigs "tb_gpio_ctrl.uut.clk"
lappend sigs "tb_gpio_ctrl.uut.rst_n"
lappend sigs "tb_gpio_ctrl.uut.psel"
lappend sigs "tb_gpio_ctrl.uut.penable"
lappend sigs "tb_gpio_ctrl.uut.pwrite"
lappend sigs "tb_gpio_ctrl.uut.paddr"
lappend sigs "tb_gpio_ctrl.uut.pwdata"
lappend sigs "tb_gpio_ctrl.uut.prdata"
lappend sigs "tb_gpio_ctrl.uut.pready"
lappend sigs "tb_gpio_ctrl.uut.irq"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
