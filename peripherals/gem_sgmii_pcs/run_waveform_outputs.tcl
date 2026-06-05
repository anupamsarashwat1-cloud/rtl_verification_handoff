set sigs [list]
lappend sigs "tb_gem_sgmii_pcs.gmii_rxd"
lappend sigs "tb_gem_sgmii_pcs.gmii_rx_dv"
lappend sigs "tb_gem_sgmii_pcs.gmii_rx_er"
lappend sigs "tb_gem_sgmii_pcs.gmii_crs"
lappend sigs "tb_gem_sgmii_pcs.gmii_col"
lappend sigs "tb_gem_sgmii_pcs.tbi_tx_data"
lappend sigs "tb_gem_sgmii_pcs.link_up"
lappend sigs "tb_gem_sgmii_pcs.speed"
lappend sigs "tb_gem_sgmii_pcs.duplex"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
