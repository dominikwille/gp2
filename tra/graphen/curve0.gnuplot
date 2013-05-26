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
file(n) = sprintf("curve%d.data", n)

#set logscale xy
set xzeroaxis
set yzeroaxis
set xrange [-15:15]
set yrange [-35:35]
set x2range [150:-150]
set y2range [1:-1]
#set xlabel "Frequenz {/Symbol w} in Hz"
#set ylabel "U_{R}/U_{G}"

set xtics axis
set x2tics axis
set ytics axis
set y2tics axis

set xtics 1, 1, 14
set x2tics 20, 20, 140
set ytics 10, 10
set y2tics 0.1, 0.1, 0.9


u(x) = 0.0015*x + 0.002
i_c(x) = 0.008*x + 0.03
i_b(x) = 0.008*x + 0.3

#plot f(x) title 'Theoretischer Verlauf' lt 2 lw 2 , \
# file lt 2 with xyerrorbars title 'Messwerte' 
plot file(0) using 1:2:(u($1)):(i_c($2)) with xyerrorbars title 'I_B {/Symbol \273} 30 {/Symbol m} A' lt 1 pt 0 ,\
      file(1) using 1:2:(u($1)):(i_c($2)) with xyerrorbars title 'I_B {/Symbol \273} 60 {/Symbol m} A' lt 2 pt 0,\
      file(2) using 1:2:(u($1)):(i_c($2)) with xyerrorbars title 'I_B {/Symbol \273} 90 {/Symbol m} A' lt 3 pt 0,\
      file(3) using 1:2:(u($1)):(i_c($2)) with xyerrorbars title 'I_B {/Symbol \273} 120 {/Symbol m} A' lt 4 pt 0,\
      file(10) using 1:2:(i_b($1)):(i_c($2)) with xyerrorbars axes x2y1 title '' lt 1 pt 0,\
      file(11) using 1:2:(i_b($1)):(i_c($2)) with xyerrorbars axes x2y1 title '' lt 2 pt 0,\
      file(12) using 1:2:(i_b($1)):(i_c($2)) with xyerrorbars axes x2y1 title '' lt 3 pt 0,\
      file(13) using 1:2:(i_b($1)):(i_c($2)) with xyerrorbars axes x2y1 title '' lt 4 pt 0,\
      file(10) using 1:3:(i_b($1)):(u($3)) with xyerrorbars axes x2y2 title '' lt 1 pt 0,\
      file(11) using 1:3:(i_b($1)):(u($3)) with xyerrorbars axes x2y2 title '' lt 2 pt 0,\
      file(12) using 1:3:(i_b($1)):(u($3)) with xyerrorbars axes x2y2 title '' lt 3 pt 0,\
      file(13) using 1:3:(i_b($1)):(u($3)) with xyerrorbars axes x2y2 title '' lt 4 pt 0,\
      file(10) using 4:3:(u($4)):(u($3)) with xyerrorbars axes x1y2 title '' lt 1 pt 0,\
      file(11) using 4:3:(u($4)):(u($3)) with xyerrorbars axes x1y2 title '' lt 2 pt 0,\
      file(12) using 4:3:(u($4)):(u($3)) with xyerrorbars axes x1y2 title '' lt 3 pt 0,\
      file(13) using 4:3:(u($4)):(u($3)) with xyerrorbars axes x1y2 title '' lt 4 pt 0,\
      #g(x) axes x2y1
