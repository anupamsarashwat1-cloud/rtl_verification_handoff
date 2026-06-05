set sigs [list]
lappend sigs "tb_aes_engine.prdata"
lappend sigs "tb_aes_engine.pready"
lappend sigs "tb_aes_engine.pslverr"
lappend sigs "tb_aes_engine.s_axis_tready"
lappend sigs "tb_aes_engine.m_axis_tdata"
lappend sigs "tb_aes_engine.m_axis_tvalid"
lappend sigs "tb_aes_engine.m_axis_tlast"
lappend sigs "tb_aes_engine.aes_irq"
lappend sigs "tb_aes_engine.clk"
lappend sigs "tb_aes_engine.rst_n"
lappend sigs "tb_aes_engine.paddr"
lappend sigs "tb_aes_engine.psel"
lappend sigs "tb_aes_engine.penable"
lappend sigs "tb_aes_engine.pwrite"
lappend sigs "tb_aes_engine.pwdata"
lappend sigs "tb_aes_engine.s_axis_tdata"
lappend sigs "tb_aes_engine.s_axis_tvalid"
lappend sigs "tb_aes_engine.s_axis_tlast"
lappend sigs "tb_aes_engine.m_axis_tready"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
