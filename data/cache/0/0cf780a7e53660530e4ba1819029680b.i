a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1023:"
reset
set border linewidth 1.5
set terminal postscript eps color solid lw 4 'Helvetica' 24 
set output '/home/user/ost4sem/exercise/pktools/mean_ndvi_modis500.ps'
set title 'long term mean MODIS NDVI time series at 500 m'
set key out center bottom
set ylabel 'mean NDVI (%)'
set xtics ('Jan' 0, 'Feb' 1, 'Mar' 2, 'Apr' 3, 'May' 4, 'Jun' 5, 'Jul' 6, 'Aug' 7, 'Sep' 8, 'Oct' 9, 'Nov' 10, 'Dec' 11)
plot \
     '/home/user/ost4sem/exercise/pktools/mean_ndvi_2006.txt' u 0:3  w l lw 2 lc rgb '#A00000' title '2006',\
     '/home/user/ost4sem/exercise/pktools/mean_ndvi_2007.txt' u 0:3  w l lw 2 lc rgb '#00A000' title '2007',\
     '/home/user/ost4sem/exercise/pktools/mean_ndvi_2008.txt' u 0:3  w l lw 2 lc rgb '#5060D0' title '2008',\
     '/home/user/ost4sem/exercise/pktools/mean_ndvi_2009.txt' u 0:3  w l lw 2 lc rgb '#F25900' title '2009',\
     '/home/user/ost4sem/exercise/pktools/mean_ndvi_2010.txt' u 0:3  w l lw 2 lc rgb '#D181F' title '2010'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}