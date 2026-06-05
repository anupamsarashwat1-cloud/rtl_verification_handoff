set sigs [list]
lappend sigs "tb_rv_bpu.pred_taken"
lappend sigs "tb_rv_bpu.pred_target"
lappend sigs "tb_rv_bpu.pred_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
