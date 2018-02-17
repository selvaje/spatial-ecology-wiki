a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"LANDSCAPE 3D ANALYSIS";i:1;i:1;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:40;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"INTRODUCTION";i:1;i:3;i:2;i:40;}i:2;i:40;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:40;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:40;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"CREATE A RENDERING OF DIGITAL TERRAIN MODEL TO PERFORM A LANDSCAPE ANALYSIS ";}i:2;i:60;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:136;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:136;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"CREATE A MODEL FROM DEM";}i:2;i:138;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:161;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:165;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"RASTER DATA";i:1;i:2;i:2;i:165;}i:2;i:165;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:165;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:189;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"ORTOPHOTO (* TIF)";i:1;i:3;i:2;i:189;}i:2;i:189;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:189;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:189;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"COORDINATE SYSTEM : GAUSS BOAGA, DATUM WGS84";}i:2;i:219;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:263;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:265;}i:22;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"METHOD";i:1;i:2;i:2;i:265;}i:2;i:265;}i:23;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:265;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:265;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"GDAL ( READING FILE *.TIF, ASSIGNMENT COORDINATE, EXTRACTION OF A PORTION OF GRID)";}i:2;i:284;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:366;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:366;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"QGIS ( VALIDATION OF SCRIPT )";}i:2;i:368;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:397;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:397;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"OPENEV2 ( 3D ANALYSIS )";}i:2;i:399;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:422;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:424;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DATA IMPORT";i:1;i:2;i:2;i:424;}i:2;i:424;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:424;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:424;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"DATA PRE-PROCESSING, USE EPSG COORDINATE FOR TRASFORMATION IN GAUSS BOAGA COORDINATE";}i:2;i:448;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:532;}i:39;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:534;}i:40;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"DATA PROCESSING";i:1;i:2;i:2;i:534;}i:2;i:534;}i:41;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:534;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1235:"
INDIR=~/ost4sem/project/input

OUTDIR=~/ost4sem/project/output

# ADD THE VARIABLES

# READING THE FILE.TIF WITH A LOOP

echo create the report 
cd ~/ost4sem/project/input
for file in *.TIF ; do 
  gdalinfo  -mm  $file | grep "Computed Min/Max" 
  gdalinfo    $file | grep "Size" 
done > $OUTDIR/report.txt 

# ASSIGN THE COORDINATE TO FILE.TIF
# EPSG 3004 FOR GAUSS BOAGA FUSE EST 

cd $OUTDIR

for file in $INDIR/*.TIF ; do 
  file=`basename $file`
  echo define the projection of $file
  gdalwarp   -t_srs EPSG:3004  -s_srs EPSG:3004  $INDIR/$file  $OUTDIR/proj_$file
  
  #  PULL OUT THE COORDINATE OF THE VERTICES OF *TIF
  #  CALCULATE THE -projwin ulx uly lrx lry 

  ULX=`gdalinfo $OUTDIR/proj_$file | grep "Upper Left" | awk '{ gsub (","," ") ;  print $4 }'`
  ULY=`gdalinfo $OUTDIR/proj_$file | grep "Upper Left" | awk '{ print substr($5,1,11) }'`
  LRX=`gdalinfo $OUTDIR/proj_$file | grep "Lower Right" | awk '{ gsub (","," ") ;  print $4  }'`
  LRY=`gdalinfo $OUTDIR/proj_$file | grep "Lower Right" | awk '{  print substr($5,1,11)       }'`

  # ESTRATION OF A PORTION OF GRID
  

echo "clip the dem"
  gdal_translate  -projwin  $ULX $ULY $LRX $LRY $INDIR/Dem_Linux/int_gridtingb/w001001.adf  $OUTDIR/clip_grid_$file
done
";i:1;s:4:"bash";i:2;N;}i:2;i:568;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1817;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Model parametrization";i:1;i:3;i:2;i:1817;}i:2;i:1817;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1817;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1849;}i:47;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Model prediction";i:1;i:3;i:2;i:1849;}i:2;i:1849;}i:48;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1849;}i:49;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1876;}i:50;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Validation";i:1;i:3;i:2;i:1876;}i:2;i:1876;}i:51;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1876;}i:52;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1898;}i:53;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"RESULTS and DISCUSSION";i:1;i:2;i:2;i:1898;}i:2;i:1898;}i:54;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1898;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1898;}i:56;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:60:"http://old.nabble.com/OpenEV2-on-Ubuntu-9.10-td26273054.html";i:1;N;}i:2;i:1933;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1993;}i:58;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:16:":wiki:505010.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1994;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2015;}i:60;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:16:":wiki:505020.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2016;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2037;}i:62;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:16:":wiki:505050.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2038;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2059;}i:64;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:16:":wiki:505060.png";i:1;s:0:"";i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2060;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2081;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2081;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2081;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2081;}}