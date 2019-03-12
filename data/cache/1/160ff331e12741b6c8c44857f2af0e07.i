a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Calling grass functions within R";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"we use the spgrass6 R library.";}i:2;i:48;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:78;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:775:"
# Code improved from @Curlew found here:\\
# http://gis.stackexchange.com/questions/84852/apply-r-neighbours-or-neighbourhood-analysis-lecos-plugin-for-qgis-to-3000-ras

#Load libraries
library(raster)
library(spgrass6)

#Initate the previously created Location/Mapset
initGRASS(gisBase = "/usr/lib/grass64", home = tempdir(), \\
gisDbase = "/path/to/gis/data/directory", \\
location = "Location", \\
mapset = "Mapset", override = TRUE) 

# Import all raster to the list "ls"
ls <- lapply(list.files(".","*.tif"),FUN=raster) 
for(i in seq_along(ls)){
execGRASS("r.neighbors", input=names(ls[[i]]), \\
size=5,output="teste",flags=c("overwrite"))

execGRASS("r.out.gdal", input="teste", \\
output=paste(paste("/path/to/output/folder",sep="",names(ls[[i]])),sep="",".tif"))
}

";i:1;s:1:"r";i:2;N;}i:2;i:85;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:870;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:870;}}