a:63:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Languages/Software data integration: GDAL and OFT-TOOLS";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:71;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:"
The main aim of this page is to show how to integrate GDAL and OFT-TOOLS command line under BASH environment.";}i:2;i:73;}i:6;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:183;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:185;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:186;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"
A simple example is presented    /ost4sem/exercise/basic";}i:2;i:188;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:245;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:247;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:250;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"gdalogr  ";}i:2;i:252;}i:14;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:93:"http://www.spatial-ecology.net//ost4sem/exercise/basic_adv_gdalogr/integrationPK-OFT-TOOLS.sh";i:1;s:7:"  here ";}i:2;i:261;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:368;}i:16;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:238:" cd /home/user/ost4sem/exercise/basic_adv_gdalogr/
 wget http://www.spatial-ecology.net//ost4sem/exercise/basic_adv_gdalogr/integrationGDAL-OFT-TOOLS.sh
 rstudio /home/user/ost4sem/exercise/basic_adv_gdalogr/integrationGDAL-OFT-TOOLS.sh &";}i:2;i:368;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:368;}i:18;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:615;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:178:"
Giving a vector file (.shp) with two polygons and and several images (.tif) we want calculate the average and the standard deviation of all pixels which belong to each polygon. ";}i:2;i:617;}i:20;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:795;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:797;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:798;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:800;}i:24;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:22:":wiki:rstat:10poly.png";i:1;s:0:"";i:2;N;i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:801;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:832;}i:26;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:833;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:835;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:836;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:836;}i:30;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Setting WORKING directory";i:1;i:4;i:2;i:836;}i:2;i:836;}i:31;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:836;}i:32;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:68:" DIR=~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica
 cd $DIR
 ";}i:2;i:871;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:947;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:65:"Download the data (skip if the data are already in the directory)";i:1;i:4;i:2;i:947;}i:2;i:947;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:947;}i:36;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:494:" # vector
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.dbf
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.prj
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.shp
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.shx
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.qpj";}i:2;i:1020;}i:37;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:659:" # raster
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2020_TSSP_IM-ENS-A2-SP20_43023435.tif  
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2050_TSSP_IM-ENS-A2-SP20_43023435.tif  
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2080_TSSP_IM-ENS-A2-SP20_43023435.tif
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2020_TSSP_IP-ENS-A2-SP20_43023435.tif  
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2050_TSSP_IP-ENS-A2-SP20_43023435.tif  
 wget  http://spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/2080_TSSP_IP-ENS-A2-SP20_43023435.tif";}i:2;i:1528;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2206;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Get familiar with the data";i:1;i:4;i:2;i:2206;}i:2;i:2206;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2206;}i:41;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:142:" ogrinfo -al   poly_fr.shp
 gdalinfo $DIR/2050_TSSP_IP-ENS-A2-SP20_43023435.tif
 openev $DIR/2050_TSSP_IP-ENS-A2-SP20_43023435.tif poly_fr.shp";}i:2;i:2241;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2392;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:78:"Calculate average and standard deviation of all the pixels inside the polygons";i:1;i:4;i:2;i:2392;}i:2;i:2392;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2392;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2392;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Rasterize the shape file ";}i:2;i:2481;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2507;}i:48;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:85:" gdal_rasterize  -tr 1000 1000 -l  poly_fr  -a id  $DIR/poly_fr.shp  $DIR/poly_fr.tif";}i:2;i:2507;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2507;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Crop the images ";}i:2;i:2597;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2613;}i:52;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:577:"
# Get boundary information

ulx=$(gdalinfo $DIR/poly_fr.tif | grep "Upper Left" | awk '{ gsub ("[(),]","") ; print  $3  }')
uly=$(gdalinfo $DIR/poly_fr.tif | grep "Upper Left" | awk '{ gsub ("[(),]","") ; print  $4  }')
lrx=$(gdalinfo $DIR/poly_fr.tif | grep "Lower Right" | awk '{ gsub ("[(),]","") ; print $3  }')
lry=$(gdalinfo $DIR/poly_fr.tif | grep "Lower Right" | awk '{ gsub ("[(),]","") ; print $4  }')

for file in $DIR/20*43023435.tif ; do 
    filename=`basename $file .tif`
    gdal_translate -projwin $ulx $uly $lrx $lry   $file   $DIR/$filename"_crop.tif"
done
";i:1;s:4:"bash";i:2;N;}i:2;i:2620;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2620;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Calculate average and standard deviation inside the polygons";}i:2;i:3212;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3272;}i:56;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:145:"
for file in $DIR/20*crop.tif ; do
   filename=`basename $file .tif`  
   oft-stat -i $file  -o  $DIR/$filename".txt"  -um $DIR/poly_fr.tif
done
";i:1;s:4:"bash";i:2;N;}i:2;i:3279;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3279;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Check the results";}i:2;i:3439;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3457;}i:60;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:20:" head $DIR/*crop.txt";}i:2;i:3457;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3486;}i:62;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3486;}}