set num_facs [ gtkwave::getNumFacs ]
set sigs [list]
for {set i 0} {$i < $num_facs} {incr i} {
    set facname [ gtkwave::getFacName $i ]
    lappend sigs $facname
}
gtkwave::addSignalsFromList $sigs
gtkwave::/Time/Zoom/Zoom_Full
