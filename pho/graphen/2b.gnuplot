# Plot zur Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output '2b.pdf'

file = '2b.data'

set xrange [0:0.5]
set yrange [-250:250]
set xlabel "Spaltöffnung in mm"
set ylabel "Photostrom in pA"
set xzeroaxis

d=2.39

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

plot file using (d-$1):2:(2) with errorbars pt 0 title 'Messwerte bei U_G = 0,93 V'
