a:15:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:23:"Plant disease detection";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:40;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"in GRASS";i:1;i:3;i:2;i:40;}i:2;i:40;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:40;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:13:"
### in GRASS";}i:2;i:40;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:626:"
#!/bin/bash

v.import input=/media/sf_LVM_share/plantix/solos.shp layer=solos output=solos -o --overwrite
v.import input=/media/sf_LVM_share/plantix/plantix_shape.shp output=plantix_shp -o --overwrite

point_map="plantix_shp"
maps="solos"
poly_columns="TIPO CLASSE DESC2 ELEVATION"


v.db.addcolumn $point_map columns="TIPO varchar(15), CLASSE varchar(15), DESC2 varchar(15), ELEVATION int"


time for map in $maps
do

	for poly_col in $poly_columns
	do
		v.what.vect map=$point_map column=$poly_col query_map=$map query_column=$poly_col
	done

done

v.out.ogr input=plantix_shp output=~/Desktop/plantix_attr.csv format=CSV

";i:1;s:4:"bash";i:2;N;}i:2;i:60;}i:8;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:702;}i:9;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:4:"in R";i:1;i:3;i:2;i:702;}i:2;i:702;}i:10;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:702;}i:11;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:9:"
### in R";}i:2;i:702;}i:12;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2031:"

##load libraries
library(sp)
library(rgdal)


setwd("...")

##read data
plantix <- read.table("plantix_br.csv", sep=",", header=T)

#make factors numeric
plantix$longitude<-as.numeric(levels(plantix$longitude))[plantix$longitude]
plantix$latitude<-as.numeric(levels(plantix$latitude))[plantix$latitude]

##remove NA´s
plantix<-plantix[!is.na(plantix$longitude), ]
plantix<-plantix[!is.na(plantix1$latitude), ]

#remove "Outliers"
plantix<-plantix[!(plantix$longitude>=0),]
plantix<-plantix[!(plantix$latitude>40),]


#read soil map
setwd("D:/Soil Data/von-marcos/Solos Brasil")
ogrListLayers("solos.shp") #will show you available layers for the above dataset
solos_Brazil<-readOGR("solos.shp", layer="solos") #will load the shapefile to your dataset.
plot(solos_Brazil, col=solos_Brazil@data$COLOR) #to get an overview


###check if Spatial Polygon has missing values!! 

# FUNCTION TO REMOVE NA's IN sp DataFrame OBJECT
#   x           sp spatial DataFrame object
#   margin      Remove rows (1) or columns (2) 
sp.na.omit <- function(x, margin=1) {
  if (!inherits(x, "SpatialPointsDataFrame") & !inherits(x, "SpatialPolygonsDataFrame")) 
    stop("MUST BE sp SpatialPointsDataFrame OR SpatialPolygonsDataFrame CLASS OBJECT") 
  na.index <- unique(as.data.frame(which(is.na(x@data),arr.ind=TRUE))[,margin])
  if(margin == 1) {  
    cat("DELETING ROWS: ", na.index, "\n") 
    return( x[-na.index,]  ) 
  }
  if(margin == 2) {  
    cat("DELETING COLUMNS: ", na.index, "\n") 
    return( x[,-na.index]  ) 
  }
}

solos_Brazil1 <- sp.na.omit(solos_Brazil) 


#get coordinates of point data
xy <- plantix[,c(6,11)]

spdf <- SpatialPointsDataFrame(coords = xy, data = plantix,
                               proj4string = CRS("+proj=longlat +ellps=aust_SA +no_defs"))

start.time <- Sys.time()
new_shape <- point.in.poly(spdf, solos_Brazil1)
end.time <- Sys.time()

time.taken <- end.time - start.time
time.taken

#export attribute table
new_shape@data
write.table(new_shape@data,"plantix_attr.cvs",quote=F,row.names=F,sep=",")

";i:1;s:4:"bash";i:2;N;}i:2;i:718;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2763;}i:14;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2763;}}