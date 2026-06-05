set sigs [list]
lappend sigs "tb_rv_pmp.clk"
lappend sigs "tb_rv_pmp.rst_n"
lappend sigs "tb_rv_pmp.paddr"
lappend sigs "tb_rv_pmp.check_r"
lappend sigs "tb_rv_pmp.check_w"
lappend sigs "tb_rv_pmp.check_x"
lappend sigs "tb_rv_pmp.priv_mode"
lappend sigs "tb_rv_pmp.check_en"
lappend sigs "tb_rv_pmp.pmpcfg0"
lappend sigs "tb_rv_pmp.pmpcfg2"
lappend sigs "tb_rv_pmp.pmpaddr_packed"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
