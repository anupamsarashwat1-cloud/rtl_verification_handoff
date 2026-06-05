set sigs [list]
lappend sigs "tb_gpio_ctrl.clk"
lappend sigs "tb_gpio_ctrl.rst_n"
lappend sigs "tb_gpio_ctrl.psel"
lappend sigs "tb_gpio_ctrl.penable"
lappend sigs "tb_gpio_ctrl.pwrite"
lappend sigs "tb_gpio_ctrl.paddr"
lappend sigs "tb_gpio_ctrl.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
