set sigs [list]
lappend sigs "tb_rv_fpu.fp_result"
lappend sigs "tb_rv_fpu.result_valid"
lappend sigs "tb_rv_fpu.fflags"
lappend sigs "tb_rv_fpu.fpu_done"
lappend sigs "tb_rv_fpu.int_result"
lappend sigs "tb_rv_fpu.int_result_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
