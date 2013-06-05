# Plot zur Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'h.pdf'

file = 'h.data'

set xrange [0:8]
#set yrange [-50:500]
set xlabel "Frequenz in 10^{14} Hz"
set ylabel "Spannung U_G in V"
set zeroaxis

f(x) = a+b*x

fit f(x) file  via a,b

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

plot file using ($1):2:3 with errorbars pt 0 lt 3 title 'Zusammengetragene Nulldurchgänge der 3 Linien',\
	f(x) lt 3 lw 3 title ''
