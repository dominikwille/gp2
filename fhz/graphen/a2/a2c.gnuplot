# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a2c.pdf'

file = 'a2c.data'

#set xrange [-8:8]
set yrange [0:15]
set xlabel "U_B in V"
set ylabel '{/Symbol \176} I_G'
set zeroaxis

set arrow from 16.5,0 to 16.5,2.3 nohead
set arrow from 21.50,0 to 21.50,2.3 nohead
set arrow from 26.8,0 to 26.8,2.3 nohead
set arrow from 32.35,0 to 32.35,2.3 nohead

#set xtics ("Line 1" 3.14)

#f(x) = a+b*x

#fit f(x) file_fit  via a,b

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

#plot file using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 3 title 'Messwerte der Indigo-Linie',\
#	f(x) lt 3 lw 3 title ''

plot file using ($2*10):3 title 'Hg bei 205 {/Symbol \260}C'
