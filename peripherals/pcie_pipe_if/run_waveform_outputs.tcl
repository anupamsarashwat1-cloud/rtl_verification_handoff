set sigs [list]
lappend sigs "tb_pcie_pipe_if.rx_data"
lappend sigs "tb_pcie_pipe_if.rx_datak"
lappend sigs "tb_pcie_pipe_if.rx_valid"
lappend sigs "tb_pcie_pipe_if.rx_elecidle"
lappend sigs "tb_pcie_pipe_if.rx_status"
lappend sigs "tb_pcie_pipe_if.pipe_tx_data"
lappend sigs "tb_pcie_pipe_if.pipe_tx_datak"
lappend sigs "tb_pcie_pipe_if.pipe_tx_rate"
lappend sigs "tb_pcie_pipe_if.pipe_tx_elecidle"
lappend sigs "tb_pcie_pipe_if.pipe_tx_compliance"
lappend sigs "tb_pcie_pipe_if.pipe_rx_polarity"
lappend sigs "tb_pcie_pipe_if.pipe_power_down"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
