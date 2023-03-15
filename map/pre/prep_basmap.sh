#!/bin/sh
############################################################
#to   prepare domain
#by   2010/03/31, hanasaki, NIES
############################################################
# Geographical setting (Edit here if you change spatial domain/resolution)
############################################################
L=259200
XY="720 360"
LONLAT="-180 180 -90 90"
SUF=.gl5
############################################################
# Output (Do not edit here unless you are an expert)
############################################################
DIRGRDARA=../dat/grd_ara_
DIRL2XL2Y=../dat/l2x_l2y_
#
GRDARA=$DIRGRDARA/grdara${SUF}
L2X=${DIRL2XL2Y}/l2x${SUF}.txt
L2Y=${DIRL2XL2Y}/l2y${SUF}.txt
############################################################
# Job (prepare output directory)
############################################################
if [ !  -d ${DIRL2XL2Y} ]; then   mkdir -p ${DIRL2XL2Y}; fi
if [ !  -d ${DIRGRDARA} ]; then   mkdir -p ${DIRGRDARA}; fi
############################################################
# Job (make files)
############################################################
htl2xl2y $L $XY $L2X $L2Y
prog_grdara $L $XY $L2X $L2Y $LONLAT $GRDARA
