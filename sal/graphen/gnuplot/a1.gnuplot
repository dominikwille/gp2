# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a1.pdf'

file = 'a1.data'

#set xrange [-8:8]
#set yrange [0:40]
#set xtics 0, 1
set ylabel "Strecke s [mm]"
set xlabel 'Zeit t [ms]'
set zeroaxis
f(x) = a+b*x
fit f(x) file using 2:($1*10) via a, b

plot file using 2:($1*10):(0.2):(30) title 's-t-Diagramm der Schallgeschwindigkeit in Luft bei T = 25{/Symbol \260}C' with xyerrorbars lt 1 pt 0, f(x) title '' lw 3 lt 1
