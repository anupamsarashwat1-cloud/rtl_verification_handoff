set sigs [list]
lappend sigs "tb_rv_fetch.uut.clk"
lappend sigs "tb_rv_fetch.uut.rst_n"
lappend sigs "tb_rv_fetch.uut.stall"
lappend sigs "tb_rv_fetch.uut.flush"
lappend sigs "tb_rv_fetch.uut.branch_taken"
lappend sigs "tb_rv_fetch.uut.branch_target"
lappend sigs "tb_rv_fetch.uut.imem_arready"
lappend sigs "tb_rv_fetch.uut.imem_rdata"
lappend sigs "tb_rv_fetch.uut.imem_rvalid"
lappend sigs "tb_rv_fetch.uut.imem_rresp"
lappend sigs "tb_rv_fetch.uut.imem_addr"
lappend sigs "tb_rv_fetch.uut.imem_arvalid"
lappend sigs "tb_rv_fetch.uut.pc_out"
lappend sigs "tb_rv_fetch.uut.instr_out"
lappend sigs "tb_rv_fetch.uut.valid_out"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
