a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:994:"
reset
set style line 1 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red1: cloud
set style line 2 lc rgb '#ffa500' linetype 1 linewidth 2 pointtype 7 #orange/yellow: nocloud
set style line 3 lc rgb '#9400d3' linetype 1 linewidth 2 pointtype 7 #purple: shadow
set style line 4 lc rgb '#0060ad' linetype 1 linewidth 2 pointtype 7 #marine blue: water
set border linewidth 1.5
set title 'Top Of Atmosphere reflectance Landsat'
set key out
# Legend
set xlabel 'blue'
set ylabel 'NIR'
set zlabel 'TIR'
set xtics 50
set ytics 50
set ztics 20
set terminal pngcairo
set output 'output/exercise5/landsat_cloudshadowmask.png'
splot\
     'output/exercise5/clouds_landsat.txt' u 3:6:9 ls 1 title 'cloud',\
     'output/exercise5/noclouds_landsat.txt' u 3:6:9 ls 2 title 'no cloud',\
     'output/exercise5/shadows_landsat.txt' u 3:6:9 ls 3 title 'shadow',\
     'output/exercise5/water_landsat.txt' u 1:4:7 ls 4 title 'water'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}