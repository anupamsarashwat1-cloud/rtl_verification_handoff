set sigs [list]
lappend sigs "tb_can_controller.uut.clk"
lappend sigs "tb_can_controller.uut.rst_n"
lappend sigs "tb_can_controller.uut.paddr"
lappend sigs "tb_can_controller.uut.psel"
lappend sigs "tb_can_controller.uut.penable"
lappend sigs "tb_can_controller.uut.pwrite"
lappend sigs "tb_can_controller.uut.pwdata"
lappend sigs "tb_can_controller.uut.can_rx"
lappend sigs "tb_can_controller.uut.prdata"
lappend sigs "tb_can_controller.uut.pready"
lappend sigs "tb_can_controller.uut.pslverr"
lappend sigs "tb_can_controller.uut.can_irq"
lappend sigs "tb_can_controller.uut.can_tx"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
