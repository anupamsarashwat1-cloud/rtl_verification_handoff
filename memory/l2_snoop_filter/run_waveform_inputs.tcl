set sigs [list]
lappend sigs "tb_l2_snoop_filter.clk"
lappend sigs "tb_l2_snoop_filter.rst_n"
lappend sigs "tb_l2_snoop_filter.req_valid"
lappend sigs "tb_l2_snoop_filter.req_addr"
lappend sigs "tb_l2_snoop_filter.req_type"
lappend sigs "tb_l2_snoop_filter.req_core"
lappend sigs "tb_l2_snoop_filter.snoop_ack"
lappend sigs "tb_l2_snoop_filter.snoop_data_valid"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
