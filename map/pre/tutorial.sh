#!/bin/sh
# globe surface area
htstat $ARGHLF sum ../../map/dat/grd_ara_/grdara.hlf

# maximum and minimum area of grids
htstat $ARGHLF max ../../map/dat/grd_ara_/grdara.hlf
htstat $ARGHLF min ../../map/dat/grd_ara_/grdara.hlf

# draw tempreture map
gmt makecpt -T0/4000000000/1000000000 -Z > temp.cpt
htdraw $ARGHLF ../../map/dat/grd_ara_/grdara.hlf temp.cpt temp.eps
htconv temp.eps temp.tif rot
display temp.tif
