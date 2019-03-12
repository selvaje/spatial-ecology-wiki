a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:851:"
reset
set style line 1 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red
set style line 2 lc rgb '#ffa500' linetype 1 linewidth 2 pointtype 7 #orange/yellow
set border linewidth 1.5
set title 'Top Of Atmosphere signatures from Landsat'
set key left
# Legend
set xtics ('Blue' 0, 'Green' 1, 'Red' 2, 'NIR' 3, 'SWIR1' 4, 'SWIR2' 5)
set ylabel 'Digital number'
set terminal pngcairo
set output 'output/exercise2/landsat_mean_stdev.png'
plot \
     "<awk '{if(NR!=6&&NR!=7) print $0}' output/exercise2/forest_landsat_mean_stdev.txt" u 0:1:2 w yerrorbars ls 1 notitle,\
     "" u 0:1 w l ls 1 title 'forest',\
     "<awk '{if(NR!=6&&NR!=7) print $0}' output/exercise2/golf_landsat_mean_stdev.txt" u 0:1:2 w yerrorbars ls 2 notitle,\
     "" u 0:1 w l ls 2 title 'golf course'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}