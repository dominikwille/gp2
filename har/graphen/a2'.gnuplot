# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output "a2\'.pdf"

set xlabel 'freqenz in 1/s'
set ylabel 'Amplitude'

file = "a2\'.data"

plot file notitle
