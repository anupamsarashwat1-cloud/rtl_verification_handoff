set sigs [list]
lappend sigs "tb_mipi_csi2_rx.m_axis_tdata"
lappend sigs "tb_mipi_csi2_rx.m_axis_tvalid"
lappend sigs "tb_mipi_csi2_rx.m_axis_tuser"
lappend sigs "tb_mipi_csi2_rx.m_axis_tlast"
lappend sigs "tb_mipi_csi2_rx.prdata"
lappend sigs "tb_mipi_csi2_rx.pready"
lappend sigs "tb_mipi_csi2_rx.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
