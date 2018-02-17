a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:672:"
reset
set border linewidth 1.5
set style line 1 pt 7 lc rgb '#0060ad' lt 1 lw 2 #blue
set style line 2 pt 7 lc rgb '#A00000' lt 1 lw 2 #red
set border linewidth 1.5
set title 'Top Of Atmosphere reflectance Landsat'
set key
# Legend
set xtics ('Blue' 0, 'Green' 1, 'Red' 2, 'NIR' 3, 'SWIR1' 4, 'TIR1' 5, 'TIR2' 6, 'SWIR2' 7)
set ylabel 'Digital number'
set xrange [-0.5:7.5]
set terminal pngcairo
set output 'output/exercise5/landsat_clouds.png'
plot \
     'output/exercise5/clouds_landsat_mean_stdev.txt' u 0:1:2 w yerrorbars ls 1 title 'cloud',\
     'output/exercise5/noclouds_landsat_mean_stdev.txt' u 0:1:2 w yerrorbars ls 2 title 'no cloud'
set terminal wxt
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}