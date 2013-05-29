# Kennlinienfeld Eines Transistors

set termoption enhanced 
set encoding utf8

set terminal pdf enhanced
set output 'a2.pdf'

file(n) = sprintf("curve_a2.data", n)

set border 0

set xzeroaxis
set yzeroaxis
set xrange [-16:16]
set yrange [-35:35]
set x2range [160:-160]
set y2range [1:-1]

set label 'U_{CE}' at 14.5,1
set label '[V]' at 14.7, -2
set label 'I_B' at -15.5, 1
set label '[{/Symbol m}A]' at -15.8, -2

set label 'I_C' at -0.7, 33
set label '[mA]' at 0.2, 33
set label 'U_{BE}' at -1.2, -33.5
set label '[V]' at 0.2, -33.5

set xtics axis
set x2tics axis
set ytics axis
set y2tics axis

set xtics 1, 1, 14
set x2tics 20, 20, 140
set ytics 10, 10
set y2tics 0.2, 0.1, 0.9


u(x) = 0.0015*x + 0.002
i_c(x) = 0.008*x + 0.03
i_b(x) = 0.008*x + 0.3

f(x) = a*x 
#fit f(x) file(20) using ($1/10):2:(i_b($1)):(i_c($2)) via a
fit f(x) file(20) using ($1/10):2 via a
a = a/10
f(x) = x>=0 ? a*x : 1/0

g(x) = b*x
fit g(x) file(20) using ($1/10):3 via b
b = b/10
g(x) = x>=0 ? b*x : 1/0

plot  file(0) using 4:2:(u($1)):(i_c($2)) with xyerrorbars title '' lt 1 pt 0 ,\
      file(23) using 1:2:(i_b($1)):(i_c($2)) with xyerrorbars axes x2y1 title '' lt 1 pt 0,\
      file(20) using 1:3:(i_b($1)):(u($3)) with xyerrorbars axes x2y2 title '' lt 1 pt 0,\
      file(10) using 4:3:(u($4)):(u($3)) with xyerrorbars axes x1y2 title '' lt 1 pt 0,\
