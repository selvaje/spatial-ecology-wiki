a:3:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1267:"
reset
set style line 1 lc rgb '#5e9c36' linetype 1 linewidth 2 pointtype 7 #green: grass
set style line 2 lc rgb '#dd181f' linetype 1 linewidth 2 pointtype 7 #red: forest
set style line 3 lc rgb '#800000' linetype 1 linewidth 2 pointtype 7 #brown: agriculture
set style line 4 lc rgb '#0060ad' linetype 1 linewidth 2 pointtype 7 #marine blue: water
set border linewidth 1.5
set title 'phenology based on MODIS NDVI at 250 m'
set key out center bottom
#water forest grass agriculture
set terminal pngcairo
set output 'output/exercise4/ndvi_landcover_modis250.png'
set xrange [0:11]
set ylabel 'MODIS NDVI (%)'
set xtics ('Jan' 0, 'Feb' 1, 'Mar' 2, 'Apr' 3, 'May' 4, 'Jun' 5, 'Jul' 6, 'Aug' 7, 'Sep' 8, 'Oct' 9, 'Nov' 10, 'Dec' 11)
#colours from youinfinitesnake.blogspot.be/2011/02/attractive-scientific-plots-with.html
plot \
     'output/exercise4/grass_modis250_ndvi.txt' u 0:1 w linespoints ls 1 title 'grass',\
     'output/exercise4/forest_modis250_ndvi.txt' u 0:1 w linespoints ls 2 title 'forest',\
     'output/exercise4/agriculture_modis250_ndvi.txt' u 0:1 w linespoints ls 3 title 'agriculture',\
     'output/exercise4/water_modis250_ndvi.txt' u 0:1 w linespoints ls 4 title 'water'
set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
replot
";i:1;s:7:"gnuplot";i:2;N;}i:2;i:6;}i:2;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6;}}