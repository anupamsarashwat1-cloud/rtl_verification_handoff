set sigs [list]
lappend sigs "tb_rv_execute.alu_result"
lappend sigs "tb_rv_execute.rs2_out"
lappend sigs "tb_rv_execute.rd_out"
lappend sigs "tb_rv_execute.funct3_out"
lappend sigs "tb_rv_execute.opcode_out"
lappend sigs "tb_rv_execute.mem_read_out"
lappend sigs "tb_rv_execute.mem_write_out"
lappend sigs "tb_rv_execute.reg_write_out"
lappend sigs "tb_rv_execute.is_amo_out"
lappend sigs "tb_rv_execute.amo_funct5_out"
lappend sigs "tb_rv_execute.valid_out"
lappend sigs "tb_rv_execute.mul_div_stall"
lappend sigs "tb_rv_execute.branch_taken"
lappend sigs "tb_rv_execute.branch_target"
lappend sigs "tb_rv_execute.lr_addr"
lappend sigs "tb_rv_execute.lr_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
