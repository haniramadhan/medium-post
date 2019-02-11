set ls 1 lt 1 lw 1 pt 2
set ls 2 lt 1 lw 1 pt 4 
set ls 3 lt 1 lw 1 pt 6  

set xrange [0:11]
set yrange [0.0:0.3]
set xtics ("1" 1.0, "2" 2.0, "3" 3.0, "4" 4.0, "5" 5.0, "6" 6.0, "7" 7.0, "8" 8.0, "9" 9.0, "10" 10.0)

set style data linespoints
set pointsize 1

set xlabel 'Perlakuan'
set ylabel 'Kepadatan'
set term postscript enhanced 
set output 'result_linepoint.eps'
plot 'data1' using 1:2 ls 1 title "A", \
	 '' using 1:3 ls 2 title "B", \
	 '' using 1:4 ls 3 title "C"
