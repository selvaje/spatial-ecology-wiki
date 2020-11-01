a:195:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"Use GDAL/OGR and PKTOOLS for raster/vector operations";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:70;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Enreach OSGeoLive Linux Virtual with PKTOOLS and Openev";i:1;i:3;i:2;i:70;}i:2;i:70;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:70;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:70;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:138;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"
If you download the OSGeoLive 13 directly from ";}i:2;i:140;}i:9;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:36:"https://live.osgeo.org/en/index.html";i:1;N;}i:2;i:188;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:" then you have to install pktools and openev following this procedure ";}i:2;i:228;}i:11;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:20:"pkt_openev_osgeolive";i:1;s:66:" Install pktools, openev and R 4.0.2 in OSGeoLive 13 Linux Virtual";}i:2;i:298;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"  ";}i:2;i:391;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:393;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:395;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:396;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:396;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"In the Ubuntu VM";i:1;i:3;i:2;i:396;}i:2;i:396;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:396;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:396;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"Data Directory: $HOME/ost4sem/exercise/geodata";}i:2;i:423;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:469;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"SDM/ ";}i:2;i:471;}i:23;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:476;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:478;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:479;}i:26;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:657:"##### Download the data ONLY if your following the exercise in your machine. 
##### I you are using the OSGeoLive 13.0 Linux Virtuan Machine you do not need to dowload the data. 
mkdir -p $HOME/ost4sem/exercise
cd $HOME/ost4sem/exercise
wget -N http://spatial-ecology.net/ost4sem/exercise/geodata_SDM.tar.gz
tar xvzf geodata_SDM.tar.gz
cd $HOME/ost4sem/exercise/geodata_SDM
wget -N http://spatial-ecology.net/ost4sem/exercise/geodata_SDM/gdal-ogr-pktools.sh
emacs -nw  $HOME/ost4sem/exercise/geodata_SDM/gdal-ogr-pktools.sh
## gedit $HOME/ost4sem/exercise/geodata_SDM/gdal-ogr-pktools.sh &
## rstudio $HOME/ost4sem/exercise/geodata_SDM/gdal-ogr-pktools.sh &";}i:2;i:479;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1161;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"GDAL Commands";i:1;i:2;i:2;i:1161;}i:2;i:1161;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1161;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1188;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Change the directory, and explore the files";i:1;i:4;i:2;i:1188;}i:2;i:1188;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1188;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:190:"
cd $HOME/ost4sem/exercise/geodata_SDM
ls */*.tif  # list all the files with the extension .tif
gdalinfo vegetation/ETmean08-11.tif

# Visualize the image

openev vegetation/ETmean08-11.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:1246;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1246;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Reply to the following questions:";}i:2;i:1451;}i:36;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1484;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"
What is the pixel size?";}i:2;i:1486;}i:38;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1510;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"
How do you get min and max pixel values?";}i:2;i:1512;}i:40;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1553;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1555;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1557;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Understand data type";i:1;i:4;i:2;i:1557;}i:2;i:1557;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1557;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:465:"
                      Ranges of GDAL data types        Image
GDAL data type	       minimum  	maximum        Size 
Byte  			     0  	    255        39M
UInt16			     0  	 65,535        78M
Int16, CInt16 	       -32,768  	 32,767        78M
UInt32			     0    4,294,967,295        155M  
Int32, CInt32 	-2,147,483,648    2,147,483,647        155M
Float32, CFloat32      -3.4E38           3.4E38        155M
Float64, CFloat64    -1.79E308         1.79E308        309M";}i:2;i:1585;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2074;}i:47;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Understand NoData Value";i:1;i:4;i:2;i:2074;}i:2;i:2074;}i:48;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2074;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:235:"
gdalinfo -mm vegetation/ETmean08-11.tif
gdal_edit.py -a_nodata -9999 vegetation/ETmean08-11.tif
gdalinfo -mm vegetation/ETmean08-11.tif
gdal_edit.py -a_nodata -339999995214436424907732413799364296704.000    vegetation/ETmean08-11.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:2112;}i:50;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2365;}i:51;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Calculate minimum and maximum values for all the images";i:1;i:4;i:2;i:2365;}i:2;i:2365;}i:52;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2365;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:79:"
for file in vegetation/*.tif ; do 
gdalinfo  -mm  $file  | grep Computed
done
";i:1;s:4:"bash";i:2;N;}i:2;i:2434;}i:54;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2528;}i:55;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Exercise:";i:1;i:4;i:2;i:2528;}i:2;i:2528;}i:56;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2528;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2528;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"Use one of the gdal commands and try to clip the vegetation/ETmean08-11.tif image using a square box (numbers are in degree):";}i:2;i:2546;}i:59;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2671;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"
xmin : 32";}i:2;i:2673;}i:61;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2683;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"
xmax : 34";}i:2;i:2685;}i:63;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2695;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"
ymin : 1";}i:2;i:2697;}i:65;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2706;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"
ymax : 3";}i:2;i:2708;}i:67;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2717;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2719;}i:69;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2720;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2722;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2723;}i:72;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:93:" gdal............................  vegetation/ETmean08-11.tif vegetation/ETmean08-11_crop.tif";}i:2;i:2723;}i:73;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2822;}i:74;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Create a Coefficient of variation";i:1;i:4;i:2;i:2822;}i:2;i:2822;}i:75;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2822;}i:76;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2822;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"GPPmean08-11.tif temporal mean of Gross Primary Productivity ";}i:2;i:2866;}i:78;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2927;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"
GPPstdev08-11.tif temporal standard deviation of Gross Primary Productivity ";}i:2;i:2929;}i:80;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3006;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3008;}i:82;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:212:"
gdal_calc.py --type=Float32 --overwrite  -A vegetation/GPPstdev08-11.tif -B  vegetation/GPPmean08-11.tif \
   --calc="( A.astype(float) / ( B.astype(float) + 0.000000001 ) )" --outfile=vegetation/GPPcv08-11.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:3015;}i:83;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3242;}i:84;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Change pixel resolution";i:1;i:4;i:2;i:3242;}i:2;i:3242;}i:85;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:3242;}i:86;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:306:"

# looping trough the images
for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif; do 
  filename=$(basename $file .tif )
  gdalwarp -overwrite -te 29 -1 35.0000000048 4.000000004 -tr 0.008333333340000 0.008333333340000 -co COMPRESS=DEFLATE -co ZLEVEL=9 $file LST/${filename}_crop.tif 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:3279;}i:87;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3600;}i:88;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:42:"Get value at one pixel/line image-location";i:1;i:4;i:2;i:3600;}i:2;i:3600;}i:89;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:3600;}i:90;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:150:"
# looping trough the images
for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif; do 
   gdallocationinfo -valonly $file  20 20  
done
";i:1;s:4:"bash";i:2;N;}i:2;i:3657;}i:91;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3822;}i:92;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:37:"Get value at lat/long  image-location";i:1;i:4;i:2;i:3822;}i:2;i:3822;}i:93;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:3822;}i:94;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:157:"
# looping trough the images
for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif; do 
   gdallocationinfo -valonly -geoloc $file  33 2  
done
";i:1;s:4:"bash";i:2;N;}i:2;i:3874;}i:95;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4046;}i:96;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"Get value at multiple lat/long  image-location";i:1;i:4;i:2;i:4046;}i:2;i:4046;}i:97;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4046;}i:98;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:261:"
# create the lat long file 
echo 32.5 2.5 > LST/x_y.txt
echo 31.1 2.1 >> LST/x_y.txt
# looping trough the images
for file in LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif; do 
   gdallocationinfo -valonly -geoloc $file < LST/x_y.txt  
   echo ""
done
";i:1;s:4:"bash";i:2;N;}i:2;i:4108;}i:99;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4384;}i:100;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"From Image to text and from txt to image";i:1;i:4;i:2;i:4384;}i:2;i:4384;}i:101;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4384;}i:102;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:315:"
gdal_translate -of  XYZ   vegetation/ETmean08-11_crop.tif vegetation/ETmean08-11_crop.txt
awk '{if ($3>2 && $3<4) {print $1,$2,50 } else {print}}' vegetation/ETmean08-11_crop.txt > vegetation/ETmean08-11_crop_trh.txt
gdal_translate -ot Byte vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop_trh.tif 
";i:1;s:4:"bash";i:2;N;}i:2;i:4439;}i:103;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4769;}i:104;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"The use of VRT to stack images and tiling";i:1;i:4;i:2;i:4769;}i:2;i:4769;}i:105;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:4769;}i:106;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:783:"
# stack the tif
gdalbuildvrt -overwrite -separate   vegetation/stack.vrt   vegetation/ETmean08-11.tif vegetation/ETstdev08-11.tif
gdalinfo vegetation/stack.vrt

# split in tiles 
gdal_translate -srcwin 0     0 360 300 vegetation/stack.vrt vegetation/stack_UL.tif
gdal_translate -srcwin 0   300 360 300 vegetation/stack.vrt vegetation/stack_UR.tif
gdal_translate -srcwin 360   0 360 300 vegetation/stack.vrt vegetation/stack_LL.tif
gdal_translate -srcwin 360 300 360 300 vegetation/stack.vrt vegetation/stack_LR.tif
  
# recompose the image 
gdalbuildvrt -overwrite vegetation/ETmosaic.vrt vegetation/stack_UL.tif vegetation/stack_UR.tif vegetation/stack_LL.tif vegetation/stack_LR.tif
gdal_translate -co COMPRESS=DEFLATE -co ZLEVEL=9 vegetation/ETmosaic.vrt vegetation/ETmosaic.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:4825;}i:107;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5623;}i:108;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Create shp border tiles";i:1;i:4;i:2;i:5623;}i:2;i:5623;}i:109;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:5623;}i:110;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:84:"
rm -f vegetation/tiles.*
gdaltindex  vegetation/tiles.shp  vegetation/stack_??.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:5661;}i:111;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5760;}i:112;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Surface distance/buffer";i:1;i:4;i:2;i:5760;}i:2;i:5760;}i:113;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:5760;}i:114;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:425:"
# Continues distance surface
gdal_proximity.py -co COMPRESS=DEFLATE -co ZLEVEL=9 -values 0 -distunits PIXEL  -ot UInt32   vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_proximity.tif

# Fix buffer surface
gdal_proximity.py -fixed-buf-val 4 -maxdist 4 -nodata 10 -co COMPRESS=DEFLATE -co ZLEVEL=9 -values 0 -distunits PIXEL -ot Byte vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_buffer.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:5797;}i:115;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6237;}i:116;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Topography variables";i:1;i:4;i:2;i:6237;}i:2;i:6237;}i:117;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:6237;}i:118;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:594:"
# calculate  slope 
gdaldem slope -s 111120 -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif dem/slope.tif 
 
# calculate  apect
gdaldem aspect -zero_for_flat -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif dem/aspect.tif 
 
# calculate  Terrain Ruggedness Index TRI  
gdaldem TRI -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif dem/tri.tif 
 
# calculate  Topographic Position Index TPI
gdaldem TPI -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif dem/tpi.tif 
 
# calculate  Roughness   
gdaldem roughness -co COMPRESS=DEFLATE -co ZLEVEL=9 dem/GMTED2010.tif dem/roughness.tif 
";i:1;s:4:"bash";i:2;N;}i:2;i:6271;}i:119;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6883;}i:120;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"OGR Commands";i:1;i:2;i:2;i:6883;}i:2;i:6883;}i:121;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6883;}i:122;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6909;}i:123;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Select a polygon and create a new shape file";i:1;i:4;i:2;i:6909;}i:2;i:6909;}i:124;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:6909;}i:125;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:450:"
ogrinfo -al -geom=NO   shp/TM_WORLD_BORDERS.shp
# base on an attribute
rm -f shp/TM_UGANDA_BORDERS-0.3.*
ogr2ogr  -overwrite  -f "ESRI Shapefile"  -where "NAME = 'Uganda'" shp/TM_UGANDA_BORDERS-0.3.shp shp/TM_WORLD_BORDERS.shp

# base on dimension of the polygons
rm -f shp/TM_LARGE_BORDERS.*
ogr2ogr  -overwrite  -f "ESRI Shapefile" -sql "SELECT * FROM TM_WORLD_BORDERS WHERE OGR_GEOM_AREA > 100 " shp/TM_LARGE_BORDERS.shp shp/TM_WORLD_BORDERS.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:6969;}i:126;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7434;}i:127;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Add attribute and calculate a new value";i:1;i:4;i:2;i:7434;}i:2;i:7434;}i:128;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7434;}i:129;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:347:"
rm -f shp/TM_WORLD_BORDERS_Area100.shp
ogr2ogr  shp/TM_WORLD_BORDERS_Area100.shp shp/TM_WORLD_BORDERS.shp

ogrinfo -sql "ALTER TABLE TM_WORLD_BORDERS_Area100 ADD COLUMN Area100 real(12,0)" shp/TM_WORLD_BORDERS_Area100.shp

ogrinfo  -dialect SQLite -sql "UPDATE TM_WORLD_BORDERS_Area100 set Area100 = AREA + 10 " shp/TM_WORLD_BORDERS_Area100.shp 
";i:1;s:4:"bash";i:2;N;}i:2;i:7489;}i:130;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7489;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"more example at ";}i:2;i:7851;}i:132;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:32:"http://www.gdal.org/ogr_sql.html";i:1;N;}i:2;i:7867;}i:133;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7899;}i:134;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7903;}i:135;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"PKTOOLS Commands";i:1;i:2;i:2;i:7903;}i:2;i:7903;}i:136;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:7903;}i:137;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7933;}i:138;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Create a mask";i:1;i:4;i:2;i:7933;}i:2;i:7933;}i:139;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:7933;}i:140;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7933;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"The same operation that we have done before ";}i:2;i:7957;}i:142;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8007;}i:143;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:315:"
gdal_translate -of  XYZ   vegetation/ETmean08-11_crop.tif vegetation/ETmean08-11_crop.txt
awk '{if ($3>2 && $3<4) {print $1,$2,50 } else {print}}' vegetation/ETmean08-11_crop.txt > vegetation/ETmean08-11_crop_trh.txt
gdal_translate -ot Byte vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop_trh.tif 
";i:1;s:4:"bash";i:2;N;}i:2;i:8007;}i:144;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8007;}i:145;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"can be done more efficient using pkgetmask. We can create 3 masks using different thresholds values. ";}i:2;i:8337;}i:146;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8438;}i:147;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:482:"
pkgetmask  -co COMPRESS=DEFLATE -co ZLEVEL=9 -min  1  -max  2 -data 1 -nodata 0 -ot Byte  -i  vegetation/ETmean08-11.tif  -o vegetation/ETmean08-11_01_trhA.tif
pkgetmask  -co COMPRESS=DEFLATE -co ZLEVEL=9 -min  5  -max  8 -data 1 -nodata 0 -ot Byte  -i  vegetation/ETmean08-11.tif  -o vegetation/ETmean08-11_01_trhB.tif
pkgetmask  -co COMPRESS=DEFLATE -co ZLEVEL=9 -min  0  -max  10 -data 0 -nodata 1 -ot Byte  -i  vegetation/ETmean08-11.tif  -o vegetation/ETmean08-11_01_trhC.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:8445;}i:148;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:8942;}i:149;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Set a mask to other image";i:1;i:4;i:2;i:8942;}i:2;i:8942;}i:150;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:8942;}i:151;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8942;}i:152;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Use the prepared mask and apply to the image.";}i:2;i:8977;}i:153;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9028;}i:154;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:312:"
pksetmask -co COMPRESS=DEFLATE -co ZLEVEL=9 \
-m vegetation/ETmean08-11_01_trhA.tif  -msknodata 1 -nodata  -9 \
-m vegetation/ETmean08-11_01_trhB.tif  -msknodata 1 -nodata  -5 \
-m vegetation/ETmean08-11_01_trhC.tif  -msknodata 1 -nodata -10 \
-i vegetation/ETmean08-11.tif -o vegetation/ETmean08-11_01_msk.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:9028;}i:155;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9355;}i:156;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Composite images";i:1;i:4;i:2;i:9355;}i:2;i:9355;}i:157;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:9355;}i:158;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:198:"
# create a mask to apply during the composite
pkgetmask  -co COMPRESS=DEFLATE -co ZLEVEL=9 -min 0 -max 25 -data 0 -nodata 1 -ot Byte -i LST/LST_MOYDmax_month1.tif -o LST/LST_MOYDmax_month1-msk.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:9386;}i:159;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:556:"
# Calculate mean and standard deviation with several images
pkcomposite $(for file in LST/LST_MOYDmax_month??.tif LST/LST_MOYDmax_month?.tif  ; do echo -i $file ;  done ) -m LST/LST_MOYDmax_month1-msk.tif -msknodata 0 -cr mean   -dstnodata 0 -co  COMPRESS=LZW -co ZLEVEL=9 -o LST/LST_MOYDmax_monthMean.tif
pkcomposite $(for file in LST/LST_MOYDmax_month??.tif LST/LST_MOYDmax_month?.tif  ; do echo -i $file ;  done ) -m LST/LST_MOYDmax_month1-msk.tif -msknodata 0 -cr stdev   -dstnodata -1 -co  COMPRESS=LZW -co ZLEVEL=9 -o LST/LST_MOYDmax_monthStdev.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:9604;}i:160;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9604;}i:161;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:167:"Pkcomposite is very flexible, it can deal with different extents, resolutions, and can be used in combination with gdal comand to make composite of modis immages (see ";}i:2;i:10174;}i:162;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:14:"wiki:modiswget";i:1;s:63:" Download MODIS Land Surface Temperature (*.hdf) from Nasa ftp ";}i:2;i:10341;}i:163;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:")";}i:2;i:10425;}i:164;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10426;}i:165;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10426;}i:166;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"An alternative way is to use pkstatprofile";}i:2;i:10428;}i:167;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10470;}i:168;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:314:"
# Create a multiband vrt 
gdalbuildvrt -overwrite -separate LST/LST_MOYDmax_month.vrt LST/LST_MOYDmax_month?.tif LST/LST_MOYDmax_month??.tif 
# Calculate mean and standard deviation
pkstatprofile -co  COMPRESS=LZW -nodata 0 -f mean -f stdev  -i LST/LST_MOYDmax_month.vrt -o LST/LST_MOYDmax_month_mean_stdev.tif 

";i:1;s:4:"bash";i:2;N;}i:2;i:10477;}i:169;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:10806;}i:170;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Filter/Aggregate images";i:1;i:4;i:2;i:10806;}i:2;i:10806;}i:171;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:10806;}i:172;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:397:"
# mean aggregation 
pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -nodata 0 -ot Float32 -dx 10 -dy 10 -f mean -d 10 -i LST/LST_MOYDmax_monthMean.tif -o LST/LST_MOYDmax_monthMean_aggreate10mean.tif
# mean circular moving window
pkfilter -co COMPRESS=DEFLATE -co ZLEVEL=9 -nodata 0 -ot Float32 -dx 11 -dy 11 -f mean -c  -i LST/LST_MOYDmax_monthMean.tif -o LST/LST_MOYDmax_monthMean_circular11mean.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:10844;}i:173;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11256;}i:174;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Images statistic and histogram";i:1;i:4;i:2;i:11256;}i:2;i:11256;}i:175;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:11256;}i:176;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
pkstat -hist  -nbin  100 -src_min 0  -i   vegetation/GPPstdev08-11.tif
pkstat -hist  -src_min 0             -i   temperature/ug_bio_3.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:11301;}i:177;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11455;}i:178;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Images reclassification";i:1;i:4;i:2;i:11455;}i:2;i:11455;}i:179;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:11455;}i:180;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:306:"
pkstat  -hist -i temperature/ug_bio_3.tif  | grep -v " 0"  | awk '{ if ($1<75) { print $1 , 0 } else { print $1 , 1 }  }' > temperature/reclass_ug_bio_3.txt
pkreclass -co COMPRESS=DEFLATE -co ZLEVEL=9 -code temperature/reclass_ug_bio_3.txt -i temperature/ug_bio_3.tif  -o temperature/reclass_ug_bio_3.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:11493;}i:181;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11814;}i:182;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Zonal statistic (polygon extraction)";i:1;i:4;i:2;i:11814;}i:2;i:11814;}i:183;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:11814;}i:184;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:687:"
rm -f shp/polygons_stat.*
pkextractogr -srcnodata -339999995214436424907732413799364296704   -r mean -r stdev -r min    -i vegetation/GPPmean08-11.tif -s  shp/polygons.sqlite    -o   shp/polygons_stat.sqlite

pkextractogr -f "ESRI Shapefile" -srcnodata -339999995214436424907732413799364296704   -r mean -r stdev -r min -i vegetation/GPPmean08-11.tif -s  shp/polygons.sqlite -o   shp/polygons_stat.shp

# we can also create a csv that can be manipulate later on with awk
rm  -f shp/polygons_stat.csv
pkextractogr -f CSV -srcnodata -339999995214436424907732413799364296704   -r mean -r stdev -r min    -i vegetation/GPPmean08-11.tif -s  shp/polygons.sqlite    -o   shp/polygons_stat.csv
";i:1;s:4:"bash";i:2;N;}i:2;i:11865;}i:185;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:12567;}i:186;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Zonal statistic (point extraction)";i:1;i:4;i:2;i:12567;}i:2;i:12567;}i:187;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:12567;}i:188;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:462:"
# at point location
rm shp/point_stat.csv
pkextractogr -f CSV -srcnodata -339999995214436424907732413799364296704 -r mean -r stdev -r min    -i vegetation/GPPmean08-11.tif -s  shp/presence.shp -o   shp/point_stat.csv
# at point location + 1 pixel around 
rm shp/point-buf_stat.csv
pkextractogr -f CSV -buf 2 -srcnodata -339999995214436424907732413799364296704 -r mean -r stdev -r min -i vegetation/GPPmean08-11.tif -s shp/presence.shp -o shp/point-buf_stat.csv
";i:1;s:4:"bash";i:2;N;}i:2;i:12616;}i:189;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12616;}i:190;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Remove all the output";}i:2;i:13093;}i:191;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13114;}i:192;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:913:"
rm -f  vegetation/GPPcv08-11.tif LST/*_crop.tif vegetation/ETmean08-11_crop_trh.tif vegetation/ETmean08-11_crop_trh.txt vegetation/ETmean08-11_crop.txt vegetation/ETmosaic.vrt vegetation/ETmosaic.tif  vegetation/stack_UL.tif vegetation/stack_UR.tif vegetation/stack_LL.tif vegetation/stack_LR.tif vegetation/stack.vrt vegetation/tiles.* vegetation/ETmean08-11_crop_proximity.tif vegetation/ETmean08-11_crop_buffer.tif  dem/slope.tif dem/aspect.tif  dem/tri.tif dem/tpi.tif dem/roughness.tif vegetation/ETmean08-11_01_trh?.tif LST/LST_MOYDmax_month1-msk.tif LST/LST_MOYDmax_monthStdev.tif LST/LST_MOYDmax_monthMean.tif  LST/LST_MOYDmax_month_mean_stdev.tif LST/LST_MOYDmax_month.vrt LST/LST_MOYDmax_monthMean_aggreate10mean.tif LST/LST_MOYDmax_monthMean_circular11mean.tif  temperature/reclass_ug_bio_3.tif temperature/reclass_ug_bio_3.txt shp/polygons_stat.csv shp/polygons_stat.* shp/TM_WORLD_BORDERS_Area100.*
";i:1;s:4:"bash";i:2;N;}i:2;i:13121;}i:193;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:14052;}i:194;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:14052;}}