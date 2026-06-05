set sigs [list]
lappend sigs "tb_rv_fpu.clk"
lappend sigs "tb_rv_fpu.rst_n"
lappend sigs "tb_rv_fpu.fop"
lappend sigs "tb_rv_fpu.fmt"
lappend sigs "tb_rv_fpu.rm"
lappend sigs "tb_rv_fpu.valid_in"
lappend sigs "tb_rv_fpu.fp_src1"
lappend sigs "tb_rv_fpu.fp_src2"
lappend sigs "tb_rv_fpu.fp_src3"
lappend sigs "tb_rv_fpu.int_src"
lappend sigs "tb_rv_fpu.frm_csr"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
