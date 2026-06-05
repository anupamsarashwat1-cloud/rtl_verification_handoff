set sigs [list]
lappend sigs "tb_l2_data_array.dout"
lappend sigs "tb_l2_data_array.dout_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
