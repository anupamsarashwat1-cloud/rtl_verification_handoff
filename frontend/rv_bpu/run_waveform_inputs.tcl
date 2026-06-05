set sigs [list]
lappend sigs "tb_rv_bpu.clk"
lappend sigs "tb_rv_bpu.rst_n"
lappend sigs "tb_rv_bpu.fetch_pc"
lappend sigs "tb_rv_bpu.fetch_valid"
lappend sigs "tb_rv_bpu.ex_pc"
lappend sigs "tb_rv_bpu.ex_is_branch"
lappend sigs "tb_rv_bpu.ex_is_jal"
lappend sigs "tb_rv_bpu.ex_taken"
lappend sigs "tb_rv_bpu.ex_target"
lappend sigs "tb_rv_bpu.ex_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
