# Plot zur Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'vgl.pdf'

filea = '3a.data'
fileb = '3b.data'
filec = '3c.data'

set xrange [-8:8]
set yrange [-50:500]
set xlabel "U_B in V"
set ylabel "Photostrom in pA"

set zeroaxis

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

plot filec using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 7 title 'Messwerte der gelben Linie',\
	fileb using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 2 title 'Messwerte der grünen Linie',\
	filea using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 3 title 'Messwerte der Indigo-Linie'
