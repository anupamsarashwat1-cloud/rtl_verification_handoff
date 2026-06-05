set sigs [list]
lappend sigs "tb_hdmi_ctrl.clk_pixel"
lappend sigs "tb_hdmi_ctrl.clk_tmds"
lappend sigs "tb_hdmi_ctrl.rst_n"
lappend sigs "tb_hdmi_ctrl.s_axis_tdata"
lappend sigs "tb_hdmi_ctrl.s_axis_tvalid"
lappend sigs "tb_hdmi_ctrl.s_axis_tuser"
lappend sigs "tb_hdmi_ctrl.s_axis_tlast"
lappend sigs "tb_hdmi_ctrl.pclk"
lappend sigs "tb_hdmi_ctrl.prst_n"
lappend sigs "tb_hdmi_ctrl.paddr"
lappend sigs "tb_hdmi_ctrl.psel"
lappend sigs "tb_hdmi_ctrl.penable"
lappend sigs "tb_hdmi_ctrl.pwrite"
lappend sigs "tb_hdmi_ctrl.pwdata"
gtkwave::addSignalsFromList $sigs
gtkwave::setZoomFactor -18
gtkwave::setWindowStartTime 0
