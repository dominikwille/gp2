# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'graph.pdf'

file = 'graph.data'

#set xrange [-8:8]
set yrange [0:80]
set xtics 0, 1
set xlabel "Ordnung n"
set ylabel 'U_B [V]'
set zeroaxis
f(x) = a+b*x
fit f(x) file via a, b

plot file title 'Kanten der Franck-Hertz-Kurve von Ne' lt 1, f(x) title '' lw 3 lt 1
