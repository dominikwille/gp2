# Plot zur Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'graph_b.pdf'

file = 'graph_b.data'

#set xrange [-8:8]
set yrange [0:40]
set xtics 0, 1
set xlabel "Ordnung n"
set ylabel 'U_B [V]'
set zeroaxis
f(x) = a+b*x
fit f(x) file via a, b

plot file title 'Kanten der Franck-Hertz-Kurve bei 185 {/Symbol \260}C' lt 1, f(x) title '' lw 3 lt 1
