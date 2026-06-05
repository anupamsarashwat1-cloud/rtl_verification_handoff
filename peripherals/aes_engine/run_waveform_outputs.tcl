set sigs [list]
lappend sigs "tb_aes_engine.prdata"
lappend sigs "tb_aes_engine.pready"
lappend sigs "tb_aes_engine.pslverr"
lappend sigs "tb_aes_engine.s_axis_tready"
lappend sigs "tb_aes_engine.m_axis_tdata"
lappend sigs "tb_aes_engine.m_axis_tvalid"
lappend sigs "tb_aes_engine.m_axis_tlast"
lappend sigs "tb_aes_engine.aes_irq"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
