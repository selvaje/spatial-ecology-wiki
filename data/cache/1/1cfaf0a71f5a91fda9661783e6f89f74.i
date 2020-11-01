a:109:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Languages/Software data integration: GDAL, PKTOOLS and R";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:72;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"
The main aim of this page is to show how to integrate GDAL and R sw under BASH environment. ";}i:2;i:74;}i:6;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:167;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:169;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:170;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:172;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:173;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:63:"This is a draft and you have to modify according to your needs.";}i:2;i:3;i:3;s:63:"This is a draft and you have to modify according to your needs.";}i:2;i:175;}i:12;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:238;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:240;}i:14;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:241;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"
For this we create an exercise using ";}i:2;i:243;}i:16;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:281;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
tif:  ~/ost4sem/exercise/basic";}i:2;i:283;}i:18;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:314;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:316;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:319;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"gdalogr/fagus";}i:2;i:321;}i:22;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:334;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"sylvatica/20*43023435.tif ";}i:2;i:336;}i:24;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:362;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
shp:  ~/ost4sem/exercise/basic";}i:2;i:364;}i:26;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:395;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:397;}i:28;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:400;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"gdalogr/fagus";}i:2;i:402;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:415;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"sylvatica/poly";}i:2;i:417;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:431;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"fr.shp";}i:2;i:433;}i:34;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:439;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"
or";}i:2;i:441;}i:36;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:444;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"
shp:  ~/Dropbox/poly";}i:2;i:446;}i:38;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:467;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"fr.shp
";}i:2;i:469;}i:40;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:476;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"
The object of the exercise is to calculate the Moran's I index (using R) inside the polygons of the  poly_fr.sh shape file. ";}i:2;i:478;}i:42;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:603;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:605;}i:44;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:606;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"
Open the files with openev to get familiar with the geodata.";}i:2;i:608;}i:46;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:669;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:671;}i:48;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:672;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"
Setting WORKING directory. 
";}i:2;i:674;}i:50;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:703;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:705;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:706;}i:53;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:21:" DIR=~/ost4sem/moran/";}i:2;i:706;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:706;}i:55;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:732;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"
Copy referenced dataset in the working directory.";}i:2;i:734;}i:57;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:784;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:786;}i:59;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:787;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:789;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:795;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:181:"
mkdir $DIR
cd $DIR
cp ~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/20*_TSSP*43023435.tif  $DIR/
cp ~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/poly_fr.*    $DIR/ 
";i:1;s:4:"bash";i:2;N;}i:2;i:795;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:991;}i:64;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Split the shapefile";i:1;i:4;i:2;i:991;}i:2;i:991;}i:65;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:991;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:991;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Create two independent shapefile, one for each polygon, using ogr2ogr";}i:2;i:1019;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1089;}i:69;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:18:" ogr2ogr .......  ";}i:2;i:1089;}i:70;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1113;}i:71;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Crop the tif based on the  shapefile";i:1;i:4;i:2;i:1113;}i:2;i:1113;}i:72;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1113;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1113;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:137:"Crop the tif and set the out part to -1. Consider later how the -1 is read in R. You do not have compute the Moran's I considering the -1";}i:2;i:1159;}i:75;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:5:"    
";i:1;i:5;i:2;i:1296;}i:2;i:5;i:3;s:5:"    
";}i:2;i:1296;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1301;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1307;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:137:"
for file in ~/ost4sem/moran/20*43023435.tif ; do 
   pkcrop -e  .....using shapefile
   pkcrop -e  .....using the other shapefile 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:1307;}i:79;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1460;}i:80;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Calculate Moran's I in R";i:1;i:4;i:2;i:1460;}i:2;i:1460;}i:81;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1460;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1460;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Create a loop that calculates Moran's I (";}i:2;i:1494;}i:84;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:34:"http://en.wikipedia.org/wiki/Moran";i:1;N;}i:2;i:1535;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"'s_I) to each tif. ";}i:2;i:1569;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1588;}i:87;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:522:"


for file_crop in  ..........  ; do  

export file_crop=$file_crop


# start R and import bash variables (the file name)

R --vanilla -q <<EOF

file_crop = Sys.getenv('file_crop')
library(raster)
rasterOptions(tmpdir="/tmp")

# load grass raster data 

rastD = raster( paste ("/home/user/ost4sem/moran/",file_crop,sep=""))

# calculate Moran's I
M_text = Moran(rastD)

#Write the results to a simple text file
write.table (M_text[1] ,paste("moran_",file_crop,".txt",sep="" )  ,row.names = F , col.names = F)
EOF

done 

";i:1;s:4:"bash";i:2;N;}i:2;i:1596;}i:88;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2133;}i:89;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:70:"Look at these files (which contain Moran's I for each separate raster)";i:1;i:4;i:2;i:2133;}i:2;i:2133;}i:90;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2133;}i:91;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:46:" cat $DIR/moran_*_TSSP_IP-*_43023435_crop.txt ";}i:2;i:2212;}i:92;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2263;}i:93;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Extract Moran's I average using AWK";i:1;i:4;i:2;i:2263;}i:2;i:2263;}i:94;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2263;}i:95;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:93:" cat $DIR/moran_*_TSSP_IP-*_43023435_crop.txt   | awk '{ sum=sum+$1 } END { print sum/NR}  ' ";}i:2;i:2307;}i:96;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2405;}i:97;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Exercise";i:1;i:4;i:2;i:2405;}i:2;i:2405;}i:98;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2405;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2405;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Create a unique script and try to run with ";}i:2;i:2424;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2467;}i:102;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:35:" bash ~/ost4sem/moran/moran_calc.sh";}i:2;i:2467;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2467;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Solution";}i:2;i:2507;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2516;}i:106;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:86:" wget http://www.spatial-ecology.net//ost4sem/exercise/basic_adv_gdalogr/moran_calc.sh";}i:2;i:2516;}i:107;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2606;}i:108;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2606;}}