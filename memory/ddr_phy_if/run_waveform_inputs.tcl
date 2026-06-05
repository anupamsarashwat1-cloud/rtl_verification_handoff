set sigs [list]
lappend sigs "tb_ddr_phy_if.clk"
lappend sigs "tb_ddr_phy_if.rst_n"
lappend sigs "tb_ddr_phy_if.dfi_ck_en"
lappend sigs "tb_ddr_phy_if.dfi_cs_n"
lappend sigs "tb_ddr_phy_if.dfi_ras_n"
lappend sigs "tb_ddr_phy_if.dfi_cas_n"
lappend sigs "tb_ddr_phy_if.dfi_we_n"
lappend sigs "tb_ddr_phy_if.dfi_bank"
lappend sigs "tb_ddr_phy_if.dfi_addr"
lappend sigs "tb_ddr_phy_if.dfi_wrdata_valid"
lappend sigs "tb_ddr_phy_if.dfi_wrdata"
lappend sigs "tb_ddr_phy_if.dfi_wrdata_mask"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
