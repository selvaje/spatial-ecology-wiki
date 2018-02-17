a:78:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:74:"Mapping the Future projections of distribution for Natural Forest in Italy";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:175:"The objective is to use the randomForest distribution model and a series of 23 environmental predictor variables including future climatic conditions, to map natural forests. ";}i:2;i:94;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:269;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:272;}i:2;i:5;i:3;s:3:"  
";}i:2;i:272;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:159:"The bioclimatic predictors are issued from the IPCC SRES A2a Scenario. The climatic model is an averaged computation of CISRO, CCCMA and HADCM3 models.   (see ";}i:2;i:275;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:24:"http://www.worldclim.org";i:1;s:17:"www.worldclim.org";}i:2;i:434;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:" for specifications and data download) .";}i:2;i:451;}i:10;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:491;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:493;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:493;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" see /../map";}i:2;i:495;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:507;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"RF";}i:2;i:3;i:3;s:2:"RF";}i:2;i:508;}i:16;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:510;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"ITAveg.R  for specifications on the functioning of the present script";}i:2;i:511;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:580;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:582;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"Load required libraries and import randomforest model";i:1;i:3;i:2;i:582;}i:2;i:582;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:582;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:83:"
   library(rgdal)
   library(maptools)
   library(grid)
   library(randomForest) 
";i:1;s:1:"r";i:2;N;}i:2;i:651;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:651;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"If necessary you will have to install some packages as follows:";}i:2;i:746;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:815;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:67:"
install.packages(pkgs="maptools",lib= "/usr/lib/R/site-library/")
";i:1;s:1:"r";i:2;N;}i:2;i:815;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:815;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Import model Random forest model:";}i:2;i:894;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:933;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:65:"
load("~/ost4sem/studycase/ITA_veg/models/RF23tune_ITAveg")
gc()
";i:1;s:1:"r";i:2;N;}i:2;i:933;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1011;}i:32;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Define your working path";i:1;i:3;i:2;i:1011;}i:2;i:1011;}i:33;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1011;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:163:"
  path.rasters = as.character("/home/ste/ost4sem/grassdbnew/europe/Vmodel/cellhd/")
  path.results = as.character("/home/ste/ost4sem/studycase/ITA_veg/outmaps/")
";i:1;s:1:"r";i:2;N;}i:2;i:1052;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1229;}i:36;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Create a predictor grid stack";i:1;i:3;i:2;i:1229;}i:2;i:1229;}i:37;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1229;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:76:"
   print(" ------------- NOW CREATE predictors grid stack  -------------")
";i:1;s:1:"r";i:2;N;}i:2;i:1274;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1274;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:147:"Importing ARC INFO grid into R SpatialGridDataFrame and generate a spatial data stack with readGDAL function 
This is done in a loop tiles to tiles";}i:2;i:1363;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1516;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3117:"
   tile = c(20*0:114)
   
   for(t in 1:57){
   
   datagrids = readGDAL(paste(path.rasters,"pr104ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))
   datagrids$pr104 = datagrids$band1
   datagrids$pr105 = readGDAL(paste(path.rasters,"pr105ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   datagrids$pr106 = readGDAL(paste(path.rasters,"pr106ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()
   
   datagrids$pr109 = readGDAL(paste(path.rasters,"pr109ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr110 = readGDAL(paste(path.rasters,"pr110ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr111 = readGDAL(paste(path.rasters,"pr111ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr118 = readGDAL(paste(path.rasters,"pr118ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr120 = readGDAL(paste(path.rasters,"pr120ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr123 = readGDAL(paste(path.rasters,"pr123ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
      
   gc()
   datagrids$pr126 = readGDAL(paste(path.rasters,"pr126ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr128 = readGDAL(paste(path.rasters,"pr128ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr131 = readGDAL(paste(path.rasters,"pr131ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr134 = readGDAL(paste(path.rasters,"pr134ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr135 = readGDAL(paste(path.rasters,"pr135ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr136 = readGDAL(paste(path.rasters,"pr136ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   datagrids$pr137 = readGDAL(paste(path.rasters,"pr137ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr138 = readGDAL(paste(path.rasters,"pr138ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   datagrids$pr198 = readGDAL(paste(path.rasters,"pr198ENSA2a80",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr200 = readGDAL(paste(path.rasters,"pr200ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()
   
   datagrids$pr201 = readGDAL(paste(path.rasters,"pr201ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr202 = readGDAL(paste(path.rasters,"pr202ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   gc()
   datagrids$pr203 = readGDAL(paste(path.rasters,"pr203ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   datagrids$pr204 = readGDAL(paste(path.rasters,"pr204ita",sep=""), offset=c(0,tile[t]), region.dim=c(1480,20))$band1
   
   gc()
   
   cat(" ---- 23 grids inported into datagrids file - now drawing the map------\n")
";i:1;s:1:"r";i:2;N;}i:2;i:1516;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4645;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Imput future climate into the Random Forest model";i:1;i:3;i:2;i:4645;}i:2;i:4645;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4645;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4645;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:132:"The predict function is used to calculate pixel values and index according to the random forest model and original rasters imported ";}i:2;i:4705;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4843;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:299:"
   pred.mapRF = predict (RF23tuned , newdata=datagrids, type="response")
   cat("class predicted\n")
   
   pred.mapRFindex = predict (RF23tuned , newdata=datagrids, type="vote")
   cat("class index recorded\n")
   
   cat("map values for Forest Type calculated and added to predict map vector\n")
";i:1;s:1:"r";i:2;N;}i:2;i:4843;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4843;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Generate an empty tile with geographical coordinates to pixel values =-9999";}i:2;i:5154;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5235;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:225:"
   data2map = readGDAL(paste(path.rasters,"pr104ita",sep=""), offset=c(0,tile[t]), region.dim=c(1500,20))
   cat("geocoordinates inported\n")
   
   data2map$band1 = 20
   cat(" no data value is now = 15 in this tile[t]\n")
";i:1;s:1:"r";i:2;N;}i:2;i:5235;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5235;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Add predicted values to the empty tile[t] ";}i:2;i:5472;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5520;}i:57;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:130:"
   data2map$band1[as.numeric(dimnames(pred.mapRFindex)[[1]])] = as.numeric(pred.mapRF)
   cat("class values added to tile[t]\n")
";i:1;s:1:"r";i:2;N;}i:2;i:5520;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5520;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Generate ascii map tiles ====
Generate an asciii TILE file for modelled species ";}i:2;i:5662;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5748;}i:61;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:185:"
   write.asciigrid(data2map, paste(path.results,t,"tile_ITAveg_ENS80.asc",sep=""))
   
   cat("-----------------------------------------Tile", t,"created--------------------------\n")
";i:1;s:1:"r";i:2;N;}i:2;i:5748;}i:62;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5946;}i:63;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Clean up the memory and close the tile loop";i:1;i:3;i:2;i:5946;}i:2;i:5946;}i:64;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5946;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:71:"
rm(data2map)
rm(datagrids)
rm(pred.mapRF)
rm(pred.mapRFindex)
gc()

}
";i:1;s:1:"r";i:2;N;}i:2;i:6005;}i:66;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6091;}i:67;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:13:"Merging tiles";i:1;i:3;i:2;i:6091;}i:2;i:6091;}i:68;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:6091;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6091;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:195:"Now we use a bash shell command from the gdal library to merge tiles into the final mosaic map of modeled current natuaral forest vegetation of Italy and we delete these once the map is produced.";}i:2;i:6115;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6310;}i:72;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:229:"
  system("cd ost4sem/studycase/ITA_veg/results/maps")
  system("gdalwarp  -srcnodata "-9999"  -dstnodata "-9999" -of GTiff -ot Int16 -wt Int16     *tile_ITAveg_ENS80.asc   ITAveg_A2a_ENS80.tif") 
  system("rm *tile_ITAveg.asc")
";i:1;s:1:"r";i:2;N;}i:2;i:6320;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6320;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"This script is finished.
You have now mapped current and future natural forest vegetation in Italy.";}i:2;i:6561;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6660;}i:76;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6661;}i:77;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6661;}}