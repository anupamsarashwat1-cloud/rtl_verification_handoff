set sigs [list]
lappend sigs "tb_rv_mem.clk"
lappend sigs "tb_rv_mem.rst_n"
lappend sigs "tb_rv_mem.flush"
lappend sigs "tb_rv_mem.alu_result"
lappend sigs "tb_rv_mem.rs2_data"
lappend sigs "tb_rv_mem.rd_in"
lappend sigs "tb_rv_mem.funct3"
lappend sigs "tb_rv_mem.opcode"
lappend sigs "tb_rv_mem.mem_read"
lappend sigs "tb_rv_mem.mem_write"
lappend sigs "tb_rv_mem.reg_write"
lappend sigs "tb_rv_mem.valid_in"
lappend sigs "tb_rv_mem.dmem_awready"
lappend sigs "tb_rv_mem.dmem_wready"
lappend sigs "tb_rv_mem.dmem_bvalid"
lappend sigs "tb_rv_mem.dmem_arready"
lappend sigs "tb_rv_mem.dmem_rvalid"
lappend sigs "tb_rv_mem.dmem_rdata"
lappend sigs "tb_rv_mem.dmem_rresp"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
