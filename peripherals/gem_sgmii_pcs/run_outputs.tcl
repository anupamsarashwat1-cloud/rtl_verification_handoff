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
lappend sigs "tb_gem_sgmii_pcs.tx_clk"
lappend sigs "tb_gem_sgmii_pcs.rx_clk"
lappend sigs "tb_gem_sgmii_pcs.reset_n"
lappend sigs "tb_gem_sgmii_pcs.gmii_txd"
lappend sigs "tb_gem_sgmii_pcs.gmii_tx_en"
lappend sigs "tb_gem_sgmii_pcs.gmii_tx_er"
lappend sigs "tb_gem_sgmii_pcs.tbi_rx_data"
lappend sigs "tb_gem_sgmii_pcs.signal_detect"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
