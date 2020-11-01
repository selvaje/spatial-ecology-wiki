a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:723:"
reset
set style line 1 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red
set style line 2 lc rgb '#ffa500' linetype 1 linewidth 2 pointtype 7 #orange/yellow
set border linewidth 1.5
set terminal pngcairo
set output 'output/exercise3/forest_ndvi_mean_stdev.png'
set title 'phenology forest based on MODIS NDVI 2006'
set xrange [0:11]
set xtics ('Jan' 0, 'Feb' 1, 'Mar' 2, 'Apr' 3, 'May' 4, 'Jun' 5, 'Jul' 6, 'Aug' 7, 'Sep' 8, 'Oct' 9, 'Nov' 10, 'Dec' 11)
set ylabel 'NDVI (%)'
plot \
     'output/exercise3/forest_ndvi_mean_stdev.txt' u 0:1 w l ls 1 title 'forest',\
     'output/exercise3/golf_ndvi_mean_stdev.txt' u 0:1 w l ls 2 title 'golf'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}