set sigs [list]
lappend sigs "tb_gem_sgmii_pcs.reset_n"
lappend sigs "tb_gem_sgmii_pcs.tx_clk"
lappend sigs "tb_gem_sgmii_pcs.rx_clk"
lappend sigs "tb_gem_sgmii_pcs.gmii_txd"
lappend sigs "tb_gem_sgmii_pcs.gmii_tx_en"
lappend sigs "tb_gem_sgmii_pcs.gmii_tx_er"
lappend sigs "tb_gem_sgmii_pcs.tbi_rx_data"
lappend sigs "tb_gem_sgmii_pcs.signal_detect"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
