set sigs [list]
lappend sigs "tb_l2_snoop_filter.snoop_valid"
lappend sigs "tb_l2_snoop_filter.snoop_addr"
lappend sigs "tb_l2_snoop_filter.snoop_type"
lappend sigs "tb_l2_snoop_filter.resp_valid"
lappend sigs "tb_l2_snoop_filter.resp_hit"
lappend sigs "tb_l2_snoop_filter.resp_dirty"
lappend sigs "tb_l2_snoop_filter.resp_owner"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
