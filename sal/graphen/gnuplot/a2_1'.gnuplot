# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output "a2_1\'.pdf"

file = 'a2_1.data'

set xrange [0:17]
set yrange [-500:3500]
set xtics 0, 1
set ylabel "Frequenf f [Hz]"
set xlabel 'Ordnung n'
set zeroaxis
f(x) = a+b*x
fit f(x) file using 1:2:($2) via a, b

plot file using 1:2:($2*0.1) title 'Resonanzfrequenzen geschlossene Röhre T = 25{/Symbol \260}C' with errorbars lt 1 pt 0, f(x) title '' lw 3 lt 1
