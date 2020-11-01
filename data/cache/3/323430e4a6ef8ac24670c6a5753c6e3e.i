a:114:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:77:"Mapping the Natural Vegetation of Italy Using randomForest distribution model";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:189:"This R script allows you to use the random Forest model we previously constructed and a series of 23 environmental Predictor variables to map the distribution of the Italian natural forest.";}i:2;i:91;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:280;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"
This script performs the following Operations:";}i:2;i:282;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:329;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:331;}i:9;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:331;}i:10;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:331;}i:11;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:331;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:" Upload The previously computed randomForest model of natural vegetation distribution ";}i:2;i:335;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:421;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:421;}i:15;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:421;}i:16;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:421;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:" Upload GRASS format raster maps of bioclimate and geomormphology into R SpatialGridDataFrame format";}i:2;i:425;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:525;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:525;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:525;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:525;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:" Calculate pixel values according to the random forest model and environmental rasters inported in the SpatialGridDataFrame";}i:2;i:529;}i:23;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:652;}i:24;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:652;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:652;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:652;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" Generate an empty map including geographical coordinates ";}i:2;i:656;}i:28;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:714;}i:29;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:714;}i:30;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:714;}i:31;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:714;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:" Add predicted values to the empty map and form a georeferenced map";}i:2;i:718;}i:33;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:785;}i:34;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:785;}i:35;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:785;}i:36;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:785;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:" Export the georeferenced R format map to an ascii file ";}i:2;i:789;}i:38;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:845;}i:39;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:847;}i:40;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:847;}i:41;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:847;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:847;}i:43;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:849;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Nota bene";}i:2;i:851;}i:45;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:860;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"
This script performs each operation on single map tile with an extent of 1500km x 20km, and recursively creates each tile in a loop to complete the whole map generation.";}i:2;i:862;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1032;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1034;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"load libraries";i:1;i:3;i:2;i:1034;}i:2;i:1034;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1034;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:158:"
   library(rgdal)
   library(maptools)
   library(grid)
   library(randomForest) 
   print(" ------------- NOW CREATE predictors grid stack  -------------")
";i:1;s:1:"r";i:2;N;}i:2;i:1064;}i:52;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1233;}i:53;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Import model RF";i:1;i:3;i:2;i:1233;}i:2;i:1233;}i:54;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1233;}i:55;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:95:"
   load("~/ost4sem/studycase/ITA_veg/models/RF23tune_ITAveg")
   gc() # Clean your ram memory
";i:1;s:1:"r";i:2;N;}i:2;i:1268;}i:56;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1374;}i:57;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Define your working path";i:1;i:3;i:2;i:1374;}i:2;i:1374;}i:58;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1374;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:167:"
   path.rasters = as.character("/home/user/ost4sem/grassdbnew/europe/Vmodel/cellhd/")
   path.results = as.character("/home/user/ost4sem/studycase/ITA_veg/outmaps/")
";i:1;s:1:"r";i:2;N;}i:2;i:1414;}i:60;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1592;}i:61;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:48:"Importing GRASS grid into R SpatialGridDataFrame";i:1;i:3;i:2;i:1592;}i:2;i:1592;}i:62;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1592;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1592;}i:64;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1651;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" and generate a spatial data stack with readGDAL function ";}i:2;i:1654;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1718;}i:67;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:27:"
   tile = c(20*0:114)
   
";i:1;s:1:"r";i:2;N;}i:2;i:1718;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1718;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"start a loop for map tiles";}i:2;i:1756;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1788;}i:71;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2987:"   
   for(t in 1:57){
   
   datagrids = readGDAL(paste(path.rasters,"pr104ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))
   datagrids$pr104 = datagrids$band1
   datagrids$pr105 = readGDAL(paste(path.rasters,"pr105ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   datagrids$pr106 = readGDAL(paste(path.rasters,"pr106ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()
   
   datagrids$pr109 = readGDAL(paste(path.rasters,"pr109ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr110 = readGDAL(paste(path.rasters,"pr110ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr111 = readGDAL(paste(path.rasters,"pr111ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr118 = readGDAL(paste(path.rasters,"pr118ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr120 = readGDAL(paste(path.rasters,"pr120ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr123 = readGDAL(paste(path.rasters,"pr123ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1

   gc()
   datagrids$pr126 = readGDAL(paste(path.rasters,"pr126ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr128 = readGDAL(paste(path.rasters,"pr128ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1

   gc()
   datagrids$pr131 = readGDAL(paste(path.rasters,"pr131ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr134 = readGDAL(paste(path.rasters,"pr134ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1

   gc()
   datagrids$pr135 = readGDAL(paste(path.rasters,"pr135ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr136 = readGDAL(paste(path.rasters,"pr136ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1

   gc()
   datagrids$pr137 = readGDAL(paste(path.rasters,"pr137ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr138 = readGDAL(paste(path.rasters,"pr138ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1

   datagrids$pr198 = readGDAL(paste(path.rasters,"pr198ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr200 = readGDAL(paste(path.rasters,"pr200ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()

   datagrids$pr201 = readGDAL(paste(path.rasters,"pr201ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr202 = readGDAL(paste(path.rasters,"pr202ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()
   datagrids$pr203 = readGDAL(paste(path.rasters,"pr203ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr204 = readGDAL(paste(path.rasters,"pr204ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   
   cat(" ---- 23 grids inported into datagrids file - now drawing the map------\n")
   
";i:1;s:1:"r";i:2;N;}i:2;i:1788;}i:72;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4787;}i:73;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:131:"The predict function is used to calculate pixel values and index according to the random forest model and original rasters imported";i:1;i:3;i:2;i:4787;}i:2;i:4787;}i:74;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4787;}i:75;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:300:"
   pred.mapRF = predict (RF23tuned , newdata=datagrids, type="response")
   cat("class predicted\n")
   
   pred.mapRFindex = predict (RF23tuned , newdata=datagrids, type="vote")
   cat("class index recorded\n")
   
   cat("map values for Forest Type calculated and added to predict map vector\n")

";i:1;s:1:"r";i:2;N;}i:2;i:4934;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5245;}i:77;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:73:"Generate an empty tile with geographical coordinates to pixel values = 20";i:1;i:3;i:2;i:5245;}i:2;i:5245;}i:78;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5245;}i:79;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:229:"
   data2map = readGDAL(paste(path.rasters,"pr104ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))
   cat("geocoordinates inported\n")
   
   data2map$band1 = 20
   cat(" no data value is now = 15 in this tile[t]\n")
   
";i:1;s:1:"r";i:2;N;}i:2;i:5334;}i:80;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5575;}i:81;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"Add predicted values to the empty tile[t]";i:1;i:3;i:2;i:5575;}i:2;i:5575;}i:82;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5575;}i:83;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:134:"
   data2map$band1[as.numeric(dimnames(pred.mapRFindex)[[1]])] = as.numeric(pred.mapRF)
   cat("class values added to tile[t]\n")
   
";i:1;s:1:"r";i:2;N;}i:2;i:5632;}i:84;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5777;}i:85;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Generate an asciii TILE file for modelled species";i:1;i:3;i:2;i:5777;}i:2;i:5777;}i:86;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5777;}i:87;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:179:"
   write.asciigrid(data2map, paste(path.results,t,"tile_ITAveg.asc",sep=""))
   
   cat("-----------------------------------------Tile", t,"created--------------------------\n")
";i:1;s:1:"r";i:2;N;}i:2;i:5842;}i:88;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6032;}i:89;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:57:"Cleaning up the memory and finishing the for "tiles" loop";i:1;i:3;i:2;i:6032;}i:2;i:6032;}i:90;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6032;}i:91;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
   rm(data2map)
   rm(datagrids)
   rm(pred.mapRF)
   rm(pred.mapRFindex)
   gc()
   }
";i:1;s:1:"r";i:2;N;}i:2;i:6104;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6104;}i:93;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:6202;}i:2;i:5;i:3;s:3:"  
";}i:2;i:6202;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"end of the loop the tiles are created.";}i:2;i:6205;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6243;}i:96;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6245;}i:97;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Merging tiles";i:1;i:3;i:2;i:6245;}i:2;i:6245;}i:98;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6245;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6245;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:195:"Now we use a bash shell command from the gdal library to merge tiles into the final mosaic map of modeled current natuaral forest vegetation of Italy and we delete these once the map is produced.";}i:2;i:6269;}i:101;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6464;}i:102;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:208:"
  system("cd /home/ste/ost4sem/studycase/ITA_veg/outmaps/")
  system("gdalwarp  -srcnodata "-9999"  -dstnodata "-9999" -of GTiff -ot Int16 -wt Int16     *.asc   ITAveg.tif") 
  system("rm *tile_ITAveg.asc")
";i:1;s:1:"r";i:2;N;}i:2;i:6474;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6474;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:149:"End of this script.
Now you can go ahead and run the future mapping. You need first to prepare your future bioclimatic predictors surface maps using ";}i:2;i:6694;}i:105;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:31:"wiki:itaveg_fut_clim_rasters_sh";i:1;s:17:"this shell script";}i:2;i:6843;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:6896;}i:107;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6897;}i:108;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6901;}i:109;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Full script";i:1;i:1;i:2;i:6901;}i:2;i:6901;}i:110;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:6901;}i:111;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:6611:"
# #########################
#
#   Stefano Casalegno
#   May 2009
#   stefano@casalegno.net
#
# ########################
########################################################################################
########################################################################################
##                                                                                   
##  Mapping the Natural Vegetation of Italy Using randomForest distribution model     
##  and a series of 23 environmental Predictor variables.
##
##
##
##
##   This script perform the following Operations:
##
##    1. Upload The previously computed randomForest model of natural 
##         vegetation distribution 
##             
##
##    2. Upload GRASS format raster maps of bioclimate and geomormphology into R
##         SpatialGridDataFrame format
##
##    3. Calculate pixel values accordind to the random forest model 
##          and environmental rasters inported in the SpatialGridDataFrame
## 
##    4. Generate an empty map including geographical coordinates 
##
##    5. Adding predicted values to the empty and forming a georeferenced map
## 
##    6. Exporting the georeferenced R format map to an asciii file 
##
## 
##    Nota bene: This script perform each operation on single tiles of maps 
##       with an extent of 1500km x 20km and recursively create each tile in 
##       a loop to complete the whole map generation.
##
##
##########################################################################################
##########################################################################################

library(rgdal)
library(maptools)
library(grid)
library(randomForest) 



print(" ------------- NOW CREATE predictors grid stack  -------------")

### Imoprt model RF
load("/home/stefano/ubun/ost4sem/studycase/ITA_veg/R_script/results/RF23tune_ITAveg")

# from Virtual machine use 
# load("/home/ost4sem/studycase/ITA_veg/R_script/results/RF23tune_ITAveg")

gc()


path.rasters = as.character("/home/stefano/ubun/ost4sem/studycase/ITA_veg/GIS_ITA/ITA_VEGWK/cellhd/")
path.results = as.character("/home/stefano/ubun/ost4sem/studycase/ITA_veg/GIS_ITA/SPATIALDATA/ITAveg_map/")

# from Virtual machine use 
# path.rasters = as.character(/home/ost4sem/studycase/ITA_veg/GIS_ITA/ITA_VEGWK/cellhd/")
# path.results = as.character("/home/ost4sem/studycase/ITA_veg/GIS_ITA/SPATIALDATA/ITAveg_map/")


## importing ARC INFO grid into R SpatialGridDataFrame 
## and generate a spatial data stack with readGDAL function 

tile = c(20*0:114)

for(t in 1:57){

datagrids = readGDAL(paste(path.rasters,"pr104ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))
datagrids$pr104 = datagrids$band1
datagrids$pr105 = readGDAL(paste(path.rasters,"pr105ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

datagrids$pr106 = readGDAL(paste(path.rasters,"pr106ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
gc()

datagrids$pr109 = readGDAL(paste(path.rasters,"pr109ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr110 = readGDAL(paste(path.rasters,"pr110ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr111 = readGDAL(paste(path.rasters,"pr111ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr118 = readGDAL(paste(path.rasters,"pr118ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr120 = readGDAL(paste(path.rasters,"pr120ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr123 = readGDAL(paste(path.rasters,"pr123ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr126 = readGDAL(paste(path.rasters,"pr126ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr128 = readGDAL(paste(path.rasters,"pr128ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr131 = readGDAL(paste(path.rasters,"pr131ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr134 = readGDAL(paste(path.rasters,"pr134ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr135 = readGDAL(paste(path.rasters,"pr135ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr136 = readGDAL(paste(path.rasters,"pr136ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()
datagrids$pr137 = readGDAL(paste(path.rasters,"pr137ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr138 = readGDAL(paste(path.rasters,"pr138ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

datagrids$pr198 = readGDAL(paste(path.rasters,"pr198ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr200 = readGDAL(paste(path.rasters,"pr200ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
gc()

datagrids$pr201 = readGDAL(paste(path.rasters,"pr201ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr202 = readGDAL(paste(path.rasters,"pr202ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
gc()
datagrids$pr203 = readGDAL(paste(path.rasters,"pr203ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1
datagrids$pr204 = readGDAL(paste(path.rasters,"pr204ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))$band1

gc()

cat(" ---- 23 grids inported into datagrids file - now drawing the map------\n")



## predict function is used to calculate pixel values and index accordind to the random forest model and original rasters inported 

pred.mapRF = predict (RF23tuned , newdata=datagrids, type="response")
cat("class predicted\n")

pred.mapRFindex = predict (RF23tuned , newdata=datagrids, type="vote")
cat("class index recorded\n")

cat("map values for Forest Type calculated and added to predict map vector\n")


## NOW create an empty tile with geographical coordinates to pixel values = 20
data2map = readGDAL(paste(path.rasters,"pr104ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))
cat("geocoordinates inported\n")

data2map$band1 = 20
cat(" no data value is now = 15 in this tile[t]\n")

## NOW adding predicted values to the empty tile[t] 

data2map$band1[as.numeric(dimnames(pred.mapRFindex)[[1]])] = as.numeric(pred.mapRF)
cat("class values added to tile[t]\n")


## NOW creating an asciii TILE file for modelled species 

write.asciigrid(data2map, paste(path.results,t,"tile_ITAveg.asc",sep=""))


cat("-----------------------------------------Tile", t,"created--------------------------\n")

## cleaning up the memory 
rm(data2map)
rm(datagrids)
rm(pred.mapRF)
rm(pred.mapRFindex)
gc()

}

";i:1;s:1:"R";i:2;s:17:"- MAP_RF_ITAVEG.R";}i:2;i:6933;}i:112;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:13572;}i:113;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:13572;}}