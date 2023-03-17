gmt makecpt -T0/2/1 -Z > temp.cpt
htdraw $ARGHLF ./lndmsk.WFDEI.hlf temp.cpt temp.eps
htconv temp.eps temp.tif rot
display temp.tif
