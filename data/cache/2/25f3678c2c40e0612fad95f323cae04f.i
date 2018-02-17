a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Create an arc info grid for the inspire grid";i:1;i:3;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"Uper Left corner id = 1 Lower Right 800*600 = 480000";}i:2;i:57;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:109;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:111;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:112;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"
Create an header with the geographic extend and the pixel resolution";}i:2;i:114;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:189;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:281:"
echo "ncols        800"       >  inspire_ID_UL_ALL.asc 
echo "nrows        600"       >> inspire_ID_UL_ALL.asc 
echo "xllcorner    0"         >> inspire_ID_UL_ALL.asc 
echo "yllcorner    0"         >> inspire_ID_UL_ALL.asc 
echo "cellsize     1000"      >> inspire_ID_UL_ALL.asc 
";i:1;s:4:"bash";i:2;N;}i:2;i:189;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:189;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"Attach to the same file a matrix with id increasing number starting from 1 in Upper Left corner. ";}i:2;i:485;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:588;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:361:"
awk ' BEGIN {  
for (row=1 ; row<=600 ; row++)  { 
     for (col=1 ; col<=800 ; col++) { 
         printf ("%i " ,  col+(row-1)*800  ) } ; printf ("\n")  }}' >> $INDIR/inspire_ID_UL_ALL.asc

# transform the created arcinfo ascii grid in a tif.

gdal_translate   -a_srs EPSG:3035  -co "COMPRESS=LZW"  $INDIR/inspire_ID_UL_ALL.asc   $INDIR/inspire_ID_UL_ALL.tif
";i:1;s:3:"awk";i:2;N;}i:2;i:588;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:963;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"create lat lont raster";i:1;i:1;i:2;i:963;}i:2;i:963;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:963;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:26:"
# create lat lont raster ";}i:2;i:963;}i:19;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:73:"gdal_translate  -of XYZ inspire_ID_UL_ALL.tif  inspire_ID_UL_ALL_xyz.asc ";}i:2;i:990;}i:20;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:179:"awk '{ print $3 , int($1*100000)}'  inspire_ID_UL_ALL_xyz.asc >  inspire_ID_UL_ALL_xz.asc
awk '{ print $3 , int($2*100000)}'  inspire_ID_UL_ALL_xyz.asc >  inspire_ID_UL_ALL_yz.asc";}i:2;i:1067;}i:21;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:199:"pkreclass -code  inspire_ID_UL_ALL_xz.asc     -i  inspire_ID_UL_ALL.tif  -o inspire_ID_UL_ALL_X.tif
pkreclass -code  inspire_ID_UL_ALL_yz.asc     -i  inspire_ID_UL_ALL.tif  -o inspire_ID_UL_ALL_Y.tif";}i:2;i:1252;}i:22;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:269:"gdal_calc.py  --type Float32 -A  inspire_ID_UL_ALL_X.tif --calc="( A * 0.00001 )"   \ --outfile=inspire_ID_UL_ALL_Xf.tif  --overwrite 
gdal_calc.py  --type Float32 -A  inspire_ID_UL_ALL_Y.tif --calc="( A * 0.00001 )"   \ --outfile=inspire_ID_UL_ALL_Yf.tif  --overwrite ";}i:2;i:1457;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1735;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1735;}}