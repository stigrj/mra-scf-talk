set terminal postscript enhanced color portrait "Times-Roman,9"
set output "../h_convergence.ps"

set multiplot
set size 0.5,0.25
set key top right
set format y "%1.1e"

set origin 0.0,0.7
set title 'Hydrogen convergence'
set log y
set xrange [0:30]
set yrange [1.0e-15:1.0e0]
set ylabel 'residual'
set xlabel 'iteration'
plot 'h_convergence.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'wavefunction',\
'h_convergence.dat' using 1:4 w lp lt 2 lw 1 lc 0 title 'energy'

set origin 0.5,0.7
set title 'Hydrogen convergence'
plot 'h_convergence.dat' using 1:2 w lp lt 1 lw 1 lc 0 title 'wavefunction',\
'h_convergence.dat' using 1:4 w lp lt 2 lw 1 lc 0 title 'energy',\
'h_convergence.dat' using 1:5 w lp lt 3 lw 1 lc 0 title 'KAIN'
