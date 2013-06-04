# Plot zur Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output '3b.pdf'

file = '3b.data'
file_fit = '3b_fit.data'

set xrange [-8:8]
set yrange [-50:500]
set xlabel "U_B in V"
set ylabel "Photostrom in pA"

set zeroaxis

f(x) = a+b*x

fit f(x) file_fit via a,b

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

plot file using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 2 title 'Messwerte der gr�nen Linie',\
	f(x) lt 2 lw 3 title ''
