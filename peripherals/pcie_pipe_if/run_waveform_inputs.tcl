set sigs [list]
lappend sigs "tb_pcie_pipe_if.pclk"
lappend sigs "tb_pcie_pipe_if.reset_n"
lappend sigs "tb_pcie_pipe_if.tx_data"
lappend sigs "tb_pcie_pipe_if.tx_datak"
lappend sigs "tb_pcie_pipe_if.tx_rate"
lappend sigs "tb_pcie_pipe_if.tx_elecidle"
lappend sigs "tb_pcie_pipe_if.tx_compliance"
lappend sigs "tb_pcie_pipe_if.rx_polarity"
lappend sigs "tb_pcie_pipe_if.pipe_rx_data"
lappend sigs "tb_pcie_pipe_if.pipe_rx_datak"
lappend sigs "tb_pcie_pipe_if.pipe_rx_valid"
lappend sigs "tb_pcie_pipe_if.pipe_rx_elecidle"
lappend sigs "tb_pcie_pipe_if.pipe_rx_status"
lappend sigs "tb_pcie_pipe_if.pipe_phy_status"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
