set sigs [list]
lappend sigs "tb_rv_bpu.uut.clk"
lappend sigs "tb_rv_bpu.uut.rst_n"
lappend sigs "tb_rv_bpu.uut.fetch_pc"
lappend sigs "tb_rv_bpu.uut.fetch_valid"
lappend sigs "tb_rv_bpu.uut.ex_pc"
lappend sigs "tb_rv_bpu.uut.ex_is_branch"
lappend sigs "tb_rv_bpu.uut.ex_is_jal"
lappend sigs "tb_rv_bpu.uut.ex_taken"
lappend sigs "tb_rv_bpu.uut.ex_target"
lappend sigs "tb_rv_bpu.uut.ex_valid"
lappend sigs "tb_rv_bpu.uut.pred_taken"
lappend sigs "tb_rv_bpu.uut.pred_target"
lappend sigs "tb_rv_bpu.uut.pred_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
