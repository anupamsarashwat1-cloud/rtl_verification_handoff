set sigs [list]
lappend sigs "tb_rv_mem.dmem_awvalid"
lappend sigs "tb_rv_mem.dmem_awaddr"
lappend sigs "tb_rv_mem.dmem_wvalid"
lappend sigs "tb_rv_mem.dmem_wdata"
lappend sigs "tb_rv_mem.dmem_wstrb"
lappend sigs "tb_rv_mem.dmem_bready"
lappend sigs "tb_rv_mem.dmem_arvalid"
lappend sigs "tb_rv_mem.dmem_araddr"
lappend sigs "tb_rv_mem.dmem_rready"
lappend sigs "tb_rv_mem.result"
lappend sigs "tb_rv_mem.rd_out"
lappend sigs "tb_rv_mem.reg_write_out"
lappend sigs "tb_rv_mem.valid_out"
lappend sigs "tb_rv_mem.fwd_mem_data"
lappend sigs "tb_rv_mem.fwd_mem_rd"
lappend sigs "tb_rv_mem.fwd_mem_valid"
lappend sigs "tb_rv_mem.mem_stall"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
