# Plot zum Tiefpass Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output '/home/dominik/uni/4.semester/gp2/wsk/hochpass.pdf'


R = 8.065
C = 0.000003172

file = '/home/dominik/uni/4.semester/gp2/wsk/hochpass.data'

set logscale xy
set xrange [1:100000]
set yrange [0.01:5]
set xlabel "Frequenz {/Symbol w} in Hz"
set ylabel "U_{R}/U_{G}"


f(x) = x

plot f(x) title 'Theoretischer Verlauf' lt 3 lw 2 , \
 file lt 1 with xyerrorbars title 'Messwerte'
