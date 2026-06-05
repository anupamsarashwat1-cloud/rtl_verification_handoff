set sigs [list]
lappend sigs "tb_ddr_phy_if.dfi_rddata"
lappend sigs "tb_ddr_phy_if.dfi_rddata_valid"
lappend sigs "tb_ddr_phy_if.ddr_ck_p"
lappend sigs "tb_ddr_phy_if.ddr_ck_n"
lappend sigs "tb_ddr_phy_if.ddr_cke"
lappend sigs "tb_ddr_phy_if.ddr_cs_n"
lappend sigs "tb_ddr_phy_if.ddr_ras_n"
lappend sigs "tb_ddr_phy_if.ddr_cas_n"
lappend sigs "tb_ddr_phy_if.ddr_we_n"
lappend sigs "tb_ddr_phy_if.ddr_ba"
lappend sigs "tb_ddr_phy_if.ddr_addr"
lappend sigs "tb_ddr_phy_if.ddr_dm"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
