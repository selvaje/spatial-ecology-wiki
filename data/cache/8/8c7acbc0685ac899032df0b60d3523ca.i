a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1122:"
reset
set style line 1 lc rgb '#5e9c36' linetype 1 linewidth 2 pointtype 7 #green: grass
set style line 2 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red: forest
set style line 3 lc rgb '#800000' linetype 1 linewidth 2 pointtype 7 #brown: agriculture
set style line 4 lc rgb '#0060ad' linetype 1 linewidth 2 pointtype 7 #marine blue: water
set border linewidth 1.5
set terminal pngcairo
set output 'output/exercise4/ndvi_landcover_modis500.png'
set title 'long term MODIS NDVI time series at 500 m'
set key out center bottom
set ylabel 'MODIS NDVI (%)'
set xtics ('2006' 0, '2007' 12, '2008' 24, '2009' 36, '2010' 48)
set x2tics ('Jul 2006' 6, 'Jul 2008' 18, 'Jul 2009' 30, 'Jul 2010' 42)
plot \
     'output/exercise4/grass_modis500_ndvi.txt' u 0:1 w lines ls 1 title 'grass',\
     'output/exercise4/forest_modis500_ndvi.txt' u 0:1 w lines ls 2 title 'forest',\
     'output/exercise4/agriculture_modis500_ndvi.txt' u 0:1 w lines ls 3 title 'agriculture',\
     'output/exercise4/water_modis500_ndvi.txt' u 0:1 w lines ls 4 title 'water'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}