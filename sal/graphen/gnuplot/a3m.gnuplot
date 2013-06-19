# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a3m.pdf'

file = 'a3.data'

set xrange [-0.1:2.1]
#set yrange [0:40]
#set xtics 0, 1
set ylabel "Frequnz f in Hz"
set xlabel 'Ordnung n'
set zeroaxis
f(x) = b*x
fit f(x) file using 1:2 via b

plot file using 1:2 title 'Schwingfrequnzen Messing' lt 1 , f(x) title '' lw 3 lt 1
