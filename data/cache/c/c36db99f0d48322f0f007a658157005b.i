a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:570:"
reset
set border linewidth 1.5
set terminal postscript eps color solid lw 4 'Helvetica' 24 
set output '/home/user/ost4sem/exercise/pktools/forest_ndvi_mean_stdev.ps'
set title 'phenology forest based on MODIS NDVI 2006'
set xrange [0:11]
set xtics ('Jan' 0, 'Feb' 1, 'Mar' 2, 'Apr' 3, 'May' 4, 'Jun' 5, 'Jul' 6, 'Aug' 7, 'Sep' 8, 'Oct' 9, 'Nov' 10, 'Dec' 11)
set ylabel 'NDVI (%)'
plot '/home/user/ost4sem/exercise/pktools/forest_ndvi_mean_stdev.txt' u 0:1 w l pt 7 lw 2 lc rgb '#0060ad' notitle
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}