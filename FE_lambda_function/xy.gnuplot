set terminal pdfcairo enhanced font "Helvetica, 14 " size 12cm,9cm
set output "confronto.pdf"

# 
set title "Forward Euler"

#
set style line 1 linetype 1 linecolor rgb "green"  lw 6 
set style line 11 linetype 1 pointtype 12 linecolor rgb "green"  lw 1 ps 2
set style line 2 linetype 1 pointtype 6 linecolor rgb "blue"  lw 1 ps 1.5
set style line 3 linetype 1 linecolor rgb "brown"  lw 3 
set style line 4 linetype 1 linecolor rgb "red" lw 1 ps 1.5
set style line 9 linetype 1 linecolor rgb "cyan"  lw 3
set style line 5 linetype 1 linecolor rgb "purple" lw 6
set style line 5 linetype 1 pointtype 11 linecolor rgb "purple" lw 1 ps 1.5
set style line 6 linetype 1 linecolor rgb "orange" lw 3
set style line 7 linetype 1 linecolor rgb "red" lw 8
set style line 8 linetype 1 linecolor rgb "blue" lw 4
set style line 10 linetype 1 linecolor rgb "blue"  lw 8 

set grid

set autoscale fix
set key bottom

 plot "risultatiF.txt" u 1:2 w l t "FE",\
 "risultatiF.txt" u 1:(exp(-lambda*$1)) w l t "analitic"






