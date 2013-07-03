# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a2.pdf'

set xlabel 'Frequnz in 1/s'
set ylabel 'Amplitude'

f(x) = a/sqrt((b**2-x**2)**2+4*c**2*x**2)

file = 'a2.data'


fit f(x) file via a,b,c


plot file notitle, f(x) title 'fitted curve'
