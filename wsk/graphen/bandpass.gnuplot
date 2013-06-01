# Plot zum Bandpass Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output '/home/dominik/uni/4.semester/gp2/wsk/bandpass.pdf'


R = 8.093
#R_s = 1
C = 0.00003808
L = 0.0004872

file = '/home/dominik/uni/4.semester/gp2/wsk/bandpass.data'

set logscale xy
set xrange [1:1000000]
set yrange [0.001:5]
set xlabel "Frequenz {/Symbol w} in Hz"
set ylabel "U_{R}/U_{G}"


#f(x) = 1/(1+(1/(x*C)+x*L+R_s)/R)
f(x) = R/sqrt((x*L-1/(x*C))**2+(R_s+R)**2)

fit f(x) file via R_s 

plot f(x) title 'Theoretischer Verlauf' lt 4 lw 2 , \
 file lt 4 with xyerrorbars title 'Messwerte' n 
