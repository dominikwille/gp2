set terminal latex
set output 'test-gnuplottex-fig1.tex'
set terminal latex

 L = 0.004872
 R = 8.468
 R_s = 3.7

 file = '/home/dominik/uni/4.semester/gp2/wsk/tiefpass.data'

 set logscale xy
 set xrange [1:100000]
 set yrange [0.01:5]
 set xlabel "Frequenz \omega in Hz"

f(x) = 1/(1+x*L/R)
plot f(x) title 'test'
