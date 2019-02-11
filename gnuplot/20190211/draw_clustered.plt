set yrange [0.0:0.3]

set style data histogram
set style histogram cluster gap 1
set style line 1 lt 1 lw 1
set style fill pattern

set xlabel 'Perlakuan'
set ylabel 'Kepadatan'
set term postscript enhanced 
set output 'result_clustered.eps'
plot 'data2' using 2:xtic(1) ls 1 title "A", \
	 '' using 3 ls 1 title "B", \
	 '' using 4 ls 1 title "C"