set sigs [list]
lappend sigs "tb_isp_pipeline.clk"
lappend sigs "tb_isp_pipeline.rst_n"
lappend sigs "tb_isp_pipeline.s_axis_tdata"
lappend sigs "tb_isp_pipeline.s_axis_tvalid"
lappend sigs "tb_isp_pipeline.s_axis_tuser"
lappend sigs "tb_isp_pipeline.s_axis_tlast"
lappend sigs "tb_isp_pipeline.m_axis_tready"
lappend sigs "tb_isp_pipeline.paddr"
lappend sigs "tb_isp_pipeline.psel"
lappend sigs "tb_isp_pipeline.penable"
lappend sigs "tb_isp_pipeline.pwrite"
lappend sigs "tb_isp_pipeline.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
