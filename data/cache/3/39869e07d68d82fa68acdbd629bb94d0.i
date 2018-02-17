a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:887:"
reset
set style line 1 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red
set style line 2 lc rgb '#0060ad' linetype 1 linewidth 2 pointtype 7 #marine blue
set key left
set border linewidth 1.5
set terminal pngcairo
set output 'output/exercise2/forest_landsat_mean_stdev.png'
set title 'Top Of Atmosphere signatures from Landsat'
set xtics ('Blue' 0, 'Green' 1, 'Red' 2, 'NIR' 3, 'SWIR1' 4, 'SWIR2' 5)
set ylabel 'Digital number'
plot \
     "<awk '{if(NR!=6&&NR!=7) print $0}' output/exercise2/forest_landsat_mean_stdev.txt" u 0:1:2 with yerrorbars linestyle 1 notitle,\
     '' u 0:1 w lines linestyle 1 title 'forest',\
     "<awk '{if(NR!=6&&NR!=7) print $0}' output/exercise2/water_landsat_mean_stdev.txt" u 0:1:2 with yerrorbars linestyle 2 notitle,\
     '' u 0:1 with lines linestyle 2 title 'water'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}