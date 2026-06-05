set sigs [list]
lappend sigs "tb_l2_data_array.clk"
lappend sigs "tb_l2_data_array.rst_n"
lappend sigs "tb_l2_data_array.bank_sel"
lappend sigs "tb_l2_data_array.cs"
lappend sigs "tb_l2_data_array.we"
lappend sigs "tb_l2_data_array.wmask"
lappend sigs "tb_l2_data_array.addr"
lappend sigs "tb_l2_data_array.din"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
