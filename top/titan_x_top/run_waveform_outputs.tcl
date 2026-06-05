set sigs [list]
lappend sigs "tb_titan_x_top.ddr_addr"
lappend sigs "tb_titan_x_top.ddr_ba"
lappend sigs "tb_titan_x_top.ddr_bg"
lappend sigs "tb_titan_x_top.ddr_ck_p"
lappend sigs "tb_titan_x_top.ddr_ck_n"
lappend sigs "tb_titan_x_top.ddr_cke"
lappend sigs "tb_titan_x_top.ddr_cs_n"
lappend sigs "tb_titan_x_top.ddr_ras_n"
lappend sigs "tb_titan_x_top.ddr_cas_n"
lappend sigs "tb_titan_x_top.ddr_we_n"
lappend sigs "tb_titan_x_top.ddr_reset_n"
lappend sigs "tb_titan_x_top.ddr_odt"
lappend sigs "tb_titan_x_top.ddr_act_n"
lappend sigs "tb_titan_x_top.hdmi_tmds_clk_p"
lappend sigs "tb_titan_x_top.hdmi_tmds_clk_n"
lappend sigs "tb_titan_x_top.hdmi_tmds_data_p"
lappend sigs "tb_titan_x_top.hdmi_tmds_data_n"
lappend sigs "tb_titan_x_top.uart_tx"
lappend sigs "tb_titan_x_top.can_tx"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
