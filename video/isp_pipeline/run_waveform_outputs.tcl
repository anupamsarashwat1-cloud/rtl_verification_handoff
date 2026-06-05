set sigs [list]
lappend sigs "tb_isp_pipeline.s_axis_tready"
lappend sigs "tb_isp_pipeline.m_axis_tdata"
lappend sigs "tb_isp_pipeline.m_axis_tvalid"
lappend sigs "tb_isp_pipeline.m_axis_tuser"
lappend sigs "tb_isp_pipeline.m_axis_tlast"
lappend sigs "tb_isp_pipeline.prdata"
lappend sigs "tb_isp_pipeline.pready"
lappend sigs "tb_isp_pipeline.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
