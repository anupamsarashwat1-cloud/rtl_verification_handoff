set sigs [list]
lappend sigs "tb_rv_fetch.imem_addr"
lappend sigs "tb_rv_fetch.imem_arvalid"
lappend sigs "tb_rv_fetch.pc_out"
lappend sigs "tb_rv_fetch.instr_out"
lappend sigs "tb_rv_fetch.valid_out"
lappend sigs "tb_rv_fetch.clk"
lappend sigs "tb_rv_fetch.rst_n"
lappend sigs "tb_rv_fetch.stall"
lappend sigs "tb_rv_fetch.flush"
lappend sigs "tb_rv_fetch.branch_taken"
lappend sigs "tb_rv_fetch.branch_target"
lappend sigs "tb_rv_fetch.imem_arready"
lappend sigs "tb_rv_fetch.imem_rdata"
lappend sigs "tb_rv_fetch.imem_rvalid"
lappend sigs "tb_rv_fetch.imem_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
