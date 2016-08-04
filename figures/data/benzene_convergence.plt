set terminal postscript enhanced color portrait "Times-Roman,9"
set output "../benzene_convergence.ps"

set multiplot
set size 0.5,0.25
set key top right
set format y "%1.1e"

set origin 0.0,0.7
set title 'Benzene convergence'
set log y
set xrange [0:25]
set yrange [1.0e-7:1.0e0]
set ylabel 'residual'
set xlabel 'iteration'
plot 'benzene_convergence.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'power',\
'benzene_convergence.dat' using 1:3 w lp lt 3 lw 1 lc 0 title 'KAIN',\
1.0e-6 w l lt 2 lw 1 lc 0 notitle
