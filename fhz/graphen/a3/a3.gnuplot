# Plot zur Aufgabe 1

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a3.pdf'

file = 'a3.data'

#set xrange [-8:8]
set yrange [0:12000]
set xlabel "U_B in V"
set ylabel '{/Symbol \176} I_G'
set zeroaxis

set arrow from 10,0 to 10,2000 nohead
set arrow from 28,0 to 28,2000 nohead
set arrow from 50,0 to 50,2000 nohead
set arrow from 71,0 to 71,2000 nohead

#f(x) = a+b*x

#fit f(x) file_fit  via a,b

#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 

#plot file using ($1):2:(0.01):(10) with xyerrorbars pt 0 lt 3 title 'Messwerte der Indigo-Linie',\
#	f(x) lt 3 lw 3 title ''

plot file using ($1/100):2 title 'Ne bei Zimmertemperatur'
