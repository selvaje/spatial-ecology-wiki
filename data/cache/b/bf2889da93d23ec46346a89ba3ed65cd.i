a:98:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Generate Bioclimatic predictors surface maps";i:1;i:1;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:"For plotting a future prediction of the Natural Forest map in Italy under a future climate scenario we need to input in the random Forest model information for the future climatic conditions.";}i:2;i:61;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:252;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:155:"
This Script uploads and clips raster data of Future Climate Scenario IPCC Sres A2a ENS model for the year 2080. Data are derived from worldclim database. ";}i:2;i:254;}i:7;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:21:"http://wworldclim.org";i:1;N;}i:2;i:409;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:430;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:431;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"
ENS model is the averaged climatic model of CCMA, CSIRO and HADCM3 models";}i:2;i:433;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:507;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:510;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"Open grass and set the extent and working environment";i:1;i:3;i:2;i:510;}i:2;i:510;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:510;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:510;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"From a linux terminal make sure you are in the Gisdbase folder:";}i:2;i:574;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:643;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"
   cd ~/ost4sem/grassdbnew/europe
";i:1;s:4:"bash";i:2;N;}i:2;i:643;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:643;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:691;}i:2;i:5;i:3;s:4:"   
";}i:2;i:691;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Enter grass in command line mode :";}i:2;i:695;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:735;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:52:"
   grass -text ~/ost4sem/grassdbnew/europe/Vmodel
 ";i:1;s:4:"bash";i:2;N;}i:2;i:735;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:735;}i:25;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:800;}i:2;i:5;i:3;s:4:"   
";}i:2;i:800;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"
Check your working environment.  It should look like this:";}i:2;i:804;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:863;}i:28;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:181:"GRASS 6.4.0RC5 (europe):~/ost4sem/grassdb/europe > g.gisenv
GISDBASE=/home/stefano/ost4sem/grassdb
LOCATION_NAME=europe
MAPSET=Vmodel
MONITOR=x2
GRASS_GUI=text
[Raster MASK present]";}i:2;i:863;}i:29;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:863;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Set the study area as mask:";}i:2;i:1061;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:1088;}i:2;i:5;i:3;s:3:"  
";}i:2;i:1088;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"   r.mask -o input=mask_ita";}i:2;i:1091;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1118;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1118;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Grass shuld inform you:";}i:2;i:1120;}i:36;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1143;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"MASK created. All subsequent raster operations will be limited to MASK area. Removing or renaming raster file named MASK will restore raster operations to normal";}i:2;i:1144;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1305;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1305;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Now we procede as follows:";}i:2;i:1307;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1333;}i:42;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1333;}i:43;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1333;}i:44;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1333;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" Import Raster climate data at European Extent from ARC INFO GRID format to GRASS format";}i:2;i:1337;}i:46;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1425;}i:47;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1425;}i:48;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1425;}i:49;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1425;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" Clip rasters to the Italian extent";}i:2;i:1429;}i:51;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1464;}i:52;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1464;}i:53;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1464;}i:54;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1464;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" Delete European extent rasters";}i:2;i:1468;}i:56;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1499;}i:57;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1499;}i:58;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1499;}i:59;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1501;}i:60;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Upload raster data";i:1;i:3;i:2;i:1501;}i:2;i:1501;}i:61;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1501;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1501;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Import all ArcInfo raster files predictor variables for FUTURE CLIMATE into GRASS format";}i:2;i:1530;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1618;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:575:"
   for  (( dir=1 ; dir<=9 ; dir ++ ))  ; do
         r.in.gdal -o input="/home/ste/ost4sem/studycase/ITA_veg/data/ENS_A2a_2080b/pr10"$dir"/hdr.adf"  output=pr10$dir"Feurope"  --overwrite
   done
   
   for  (( dir=10 ; dir<=39 ; dir ++ ))  ; do
         r.in.gdal -o input="/home/ste/ost4sem/studycase/ITA_veg/data/ENS_A2a_2080b/pr1"$dir"/hdr.adf"  output=pr1$dir"Feurope"  --overwrite
   done
   
   for  dir in  198 199 ; do
         r.in.gdal -o input="/home/ste/ost4sem/studycase/ITA_veg/data/ENS_A2a_2080b/pr"$dir"/hdr.adf"  output=pr$dir"Feurope"  --overwrite
   done
";i:1;s:4:"bash";i:2;N;}i:2;i:1625;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1625;}i:67;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:2213;}i:2;i:5;i:3;s:4:"   
";}i:2;i:2213;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2217;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2217;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"Clip GRASS FORMAT Raster predictor variables from the European to the italian extent";}i:2;i:2219;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2309;}i:72;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:299:"
   for  (( pr=1 ; pr<=9 ; pr ++ ))  ; do
      r.mapcalc pr10$pr"ENSA2a80" = pr10$pr"Feurope" 
   done
   
   for  (( pr=10 ; pr<=39 ; pr ++ ))  ; do
      r.mapcalc pr1$pr"ENSA2a80" = pr1$pr"Feurope"
   done
   
   for  pr in  198 199 ; do
      r.mapcalc pr$pr"ENSA2a80" = pr$pr"Feurope"
   done
";i:1;s:4:"bash";i:2;N;}i:2;i:2309;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2309;}i:74;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:4:"   
";i:1;i:5;i:2;i:2621;}i:2;i:5;i:3;s:4:"   
";}i:2;i:2621;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"
Remove European extent GRASS FORMAT Raster predictor variables";}i:2;i:2625;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2694;}i:77;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:253:"
   for  (( pr=1 ; pr<=9 ; pr ++ ))  ; do
      g.remove rast=pr10$pr"Feurope"
   done

   for  (( pr=10 ; pr<=39 ; pr ++ ))  ; do
      g.remove rast=pr1$pr"Feurope" 
   done
   
   for  pr in  198 199 ; do
      g.remove rast=pr$pr"Feurope" 
   done
 ";i:1;s:4:"bash";i:2;N;}i:2;i:2694;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2694;}i:79;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:2960;}i:2;i:5;i:3;s:3:"  
";}i:2;i:2960;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"
That's all folks!
Future climatic rasters are now available for plotting future scenario maps using ";}i:2;i:2963;}i:81;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:28:"wiki:map_rf_itaveg_ens2028_r";i:1;s:13:"this R script";}i:2;i:3064;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:3110;}i:83;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3111;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3113;}i:85;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3113;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"~/ost4sem/studycase/ITA";}i:2;i:3115;}i:87;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:3138;}i:88;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:5:"veg/R";}i:2;i:3;i:3;s:5:"veg/R";}i:2;i:3139;}i:89;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:3144;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"script/map";}i:2;i:3145;}i:91;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:3155;}i:92;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"RF";}i:2;i:3;i:3;s:2:"RF";}i:2;i:3156;}i:93;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:3158;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"ITAveg_ENS2080.R script";}i:2;i:3159;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3182;}i:96;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3182;}i:97;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3182;}}