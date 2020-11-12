#!/bin/bash

maim /tmp/bg.jpg
notify-send "Lock: Caching image.."
betterlockscreen -u /tmp/bg.jpg

rm /tmp/bg.jpg

if [ -z $1 ] ; then
  ty='--lock'
else
  ty=$1
fi
echo $ty
#betterlockscreen -t "Solen BELLOUATI $(date +"%H:%M:%S %d/%m/%y")" $ty dimblur
betterlockscreen -t "Solen BELLOUATI" $ty dimblur
