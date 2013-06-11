# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a2a.pdf'

file = 'a2a.data2'

#set xrange [-8:8]
#set yrange [-50:500]
set xlabel "U_B in V"
set ylabel '{/Symbol \176} I_G'
set zeroaxis

set arrow from 11.85,0 to 11.85,2.3 nohead
set arrow from 16.85,0 to 16.85,2.3 nohead
set arrow from 21.80,0 to 21.80,2.3 nohead
set arrow from 27.000,0 to 27.00,2.3 nohead

#f(x) = a+b*x

#fit f(x) file_fit  via a,b

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

#plot file using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 3 title 'Messwerte der Indigo-Linie',\
#	f(x) lt 3 lw 3 title ''

plot file using ($1*10):2 title 'Hg bei 155 {/Symbol \260}C'
