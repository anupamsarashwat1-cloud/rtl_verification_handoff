set sigs [list]
lappend sigs "tb_ahb_to_apb.hrdata"
lappend sigs "tb_ahb_to_apb.hready_out"
lappend sigs "tb_ahb_to_apb.hresp"
lappend sigs "tb_ahb_to_apb.paddr"
lappend sigs "tb_ahb_to_apb.psel"
lappend sigs "tb_ahb_to_apb.penable"
lappend sigs "tb_ahb_to_apb.pwrite"
lappend sigs "tb_ahb_to_apb.pwdata"
lappend sigs "tb_ahb_to_apb.clk"
lappend sigs "tb_ahb_to_apb.rst_n"
lappend sigs "tb_ahb_to_apb.haddr"
lappend sigs "tb_ahb_to_apb.hwrite"
lappend sigs "tb_ahb_to_apb.htrans"
lappend sigs "tb_ahb_to_apb.hwdata"
lappend sigs "tb_ahb_to_apb.prdata"
lappend sigs "tb_ahb_to_apb.pready"
lappend sigs "tb_ahb_to_apb.pslverr"
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
gtkwave::/Time/Zoom/Zoom_In
