set sigs [list]
lappend sigs "tb_rv_pmp.uut.clk"
lappend sigs "tb_rv_pmp.uut.rst_n"
lappend sigs "tb_rv_pmp.uut.paddr"
lappend sigs "tb_rv_pmp.uut.check_r"
lappend sigs "tb_rv_pmp.uut.check_w"
lappend sigs "tb_rv_pmp.uut.check_x"
lappend sigs "tb_rv_pmp.uut.priv_mode"
lappend sigs "tb_rv_pmp.uut.check_en"
lappend sigs "tb_rv_pmp.uut.pmpcfg0"
lappend sigs "tb_rv_pmp.uut.pmpcfg2"
lappend sigs "tb_rv_pmp.uut.pmpaddr_packed"
lappend sigs "tb_rv_pmp.uut.pmp_fault"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
