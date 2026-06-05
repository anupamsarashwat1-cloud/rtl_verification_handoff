set sigs [list]
lappend sigs "tb_l2_tag_array.tag_out"
lappend sigs "tb_l2_tag_array.uut.valid_out"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
