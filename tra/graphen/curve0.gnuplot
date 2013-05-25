# Plot zum Tiefpass Aufgabe 2

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'curve0.pdf'


L = 0.004823 
R = 8.468
R_s = 3.7

file0 = 'curve0.data'
file1 = 'curve1.data'
file2 = 'curve2.data'
file3 = 'curve3.data'

#set logscale xy
set xzeroaxis
set yzeroaxis
set xrange [-15:15]
set yrange [-30:30]
set x2range [-100:100]
#set xlabel "Frequenz {/Symbol w} in Hz"
#set ylabel "U_{R}/U_{G}"
set xlabel "TEST" 
set x2label "HELLAS"
set x2tics axis
set ytics axis


#f(x) = 1/(1+(x*L+R_s)/R)
#f(x) = R/sqrt((x*L)**2+(R+R_s)**2)
g(x) = -x

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 
plot file0 title 'Messwerte' ,\
      file1 title 'Messwerte2' ,\
      file2 title 'Messwerte3' ,\
      file3 title 'Messwerte4' ,\
      g(x) axes x2y1
