set sigs [list]
lappend sigs "tb_rv_decode.pc_out"
lappend sigs "tb_rv_decode.rs1_data"
lappend sigs "tb_rv_decode.rs2_data"
lappend sigs "tb_rv_decode.imm"
lappend sigs "tb_rv_decode.rd"
lappend sigs "tb_rv_decode.rs1_addr"
lappend sigs "tb_rv_decode.rs2_addr"
lappend sigs "tb_rv_decode.funct3"
lappend sigs "tb_rv_decode.funct7"
lappend sigs "tb_rv_decode.opcode"
lappend sigs "tb_rv_decode.alu_op"
lappend sigs "tb_rv_decode.mem_read"
lappend sigs "tb_rv_decode.mem_write"
lappend sigs "tb_rv_decode.reg_write"
lappend sigs "tb_rv_decode.branch"
lappend sigs "tb_rv_decode.jal"
lappend sigs "tb_rv_decode.jalr"
lappend sigs "tb_rv_decode.valid_out"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
