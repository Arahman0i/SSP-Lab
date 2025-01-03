#set terminal svg size 1200,800 background 'white' font "Times-New-Roman,24"
#set output "plot.svg"

set terminal pdfcairo font "Times-New-Roman,16"
set output "plot-n.pdf"

set xlabel "Bond Length (Bohr)" #font ",22"
set ylabel "Total Energy (Rydberg)"  #font ",22"

set xrange [2.1:4.7]
set xtics (2.2, 2.4, 2.6, 2.8, 3.0, 3.2, 3.4, 3.6, 3.8, 4.0, 4.2, 4.4, 4.6)
#set mxtics 3

set format x "%.1f"
set format y "%.1f"

set grid linetype 1 linewidth 0.5 linecolor "gray"
set border lc rgb "black" lw 2
set key inside top right font ",18" textcolor rgb "black" box


set title 'Energy-Bond Length of Cl_{2}' font "Times-New-Roman,30" textcolor rgb "red" offset 0,1
set label 1 "Using NC-SR-PBE-Pseudopotential" at graph 0.5,1 center  font "Times-New-Roman,26" textcolor rgb "black" offset 0,1.5

set arrow 1 from 3.8,-65.3 to 3.725,-65.5780 lw 2 lc rgb "red" #nohead
set label 2 "The Minima = 3.725 Bohr" at 3.8,-65.2 center font "Times-New-Roman,20"

# to overlay an white background in a svg image.
#set object 1 image from screen 0,0 to screen 1,1 behind
#set object 1 rect from 0,0 to 1,1 fillcolor rgb "white" behind


plot "DIST-Energy.dat" using 1:2 w lp lw 2 pt 7 ps 0.6 lc rgb 'red' title "Original", \
     "DIST-Energy.dat" using 1:2 smooth csplines w l lw 2 title "Cubic Spline"
