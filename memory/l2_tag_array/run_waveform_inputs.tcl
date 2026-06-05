set sigs [list]
lappend sigs "tb_l2_tag_array.clk"
lappend sigs "tb_l2_tag_array.rst_n"
lappend sigs "tb_l2_tag_array.cs"
lappend sigs "tb_l2_tag_array.we"
lappend sigs "tb_l2_tag_array.index"
lappend sigs "tb_l2_tag_array.tag_in"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
