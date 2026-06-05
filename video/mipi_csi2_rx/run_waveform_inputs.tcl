set sigs [list]
lappend sigs "tb_mipi_csi2_rx.rst_n"
lappend sigs "tb_mipi_csi2_rx.rxbyteclkhs"
lappend sigs "tb_mipi_csi2_rx.rxdatahs"
lappend sigs "tb_mipi_csi2_rx.rxvalidhs"
lappend sigs "tb_mipi_csi2_rx.rxactivehs"
lappend sigs "tb_mipi_csi2_rx.rxsyncbhs"
lappend sigs "tb_mipi_csi2_rx.rxdata_lp"
lappend sigs "tb_mipi_csi2_rx.m_axis_tready"
lappend sigs "tb_mipi_csi2_rx.pclk"
lappend sigs "tb_mipi_csi2_rx.prst_n"
lappend sigs "tb_mipi_csi2_rx.paddr"
lappend sigs "tb_mipi_csi2_rx.psel"
lappend sigs "tb_mipi_csi2_rx.penable"
lappend sigs "tb_mipi_csi2_rx.pwrite"
lappend sigs "tb_mipi_csi2_rx.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
