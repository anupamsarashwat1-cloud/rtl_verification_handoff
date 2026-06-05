set sigs [list]
lappend sigs "tb_hdmi_ctrl.s_axis_tready"
lappend sigs "tb_hdmi_ctrl.tmds_clk_p"
lappend sigs "tb_hdmi_ctrl.tmds_clk_n"
lappend sigs "tb_hdmi_ctrl.tmds_data_p"
lappend sigs "tb_hdmi_ctrl.tmds_data_n"
lappend sigs "tb_hdmi_ctrl.prdata"
lappend sigs "tb_hdmi_ctrl.pready"
lappend sigs "tb_hdmi_ctrl.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
