set sigs [list]
lappend sigs "tb_rv_decode.clk"
lappend sigs "tb_rv_decode.rst_n"
lappend sigs "tb_rv_decode.stall"
lappend sigs "tb_rv_decode.flush"
lappend sigs "tb_rv_decode.pc_in"
lappend sigs "tb_rv_decode.instr_in"
lappend sigs "tb_rv_decode.valid_in"
lappend sigs "tb_rv_decode.wb_rd"
lappend sigs "tb_rv_decode.wb_data"
lappend sigs "tb_rv_decode.wb_we"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
