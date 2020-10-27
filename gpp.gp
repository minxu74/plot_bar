#set term postscript landscape enhanced 
set term png size 1600,1200

set output 'gpp.png'

set xrange [-1:11]
set yrange [100:]

set xtics rotate by -45 offset 0,-1 font ", 22"
set ytics font ", 22"

set border 15 lw 3

set size 0.9, 0.8

set origin 0.1, 0.1

set ylabel "GPP (PgC/yr)" offset -2, 0 font ", 26"
plot 'GPP.dat' using 0:2:3:xtic(1) noti w errorbars lw 3 lt -1, '' using 0:2 noti w p ps 4 pt 7 lc -1
