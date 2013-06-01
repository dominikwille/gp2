# Plot zum Tiefpass Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output '/home/dominik/uni/4.semester/gp2/wsk/tiefpass.pdf'


L = 0.004823 
R = 8.468
R_s = 3.7

file = '/home/dominik/uni/4.semester/gp2/wsk/tiefpass.data'

set logscale xy
set xrange [1:1000000]
set yrange [0.001:5]
set xlabel "Frequenz {/Symbol w} in Hz"
set ylabel "U_{R}/U_{G}"


#f(x) = 1/(1+(x*L+R_s)/R)
f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
 file lt 2 with xyerrorbars title 'Messwerte' 
