a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"Syracuse and lead and environmental justice example";i:1;i:2;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13487:"

####################################    Spatial Analyses: SYRACUSE   #######################################
#######################################  Analyse data from Census #######################################
#
# This script performs analyses for the Exercise 1 of the Geospatial Analysis course.
# The goal is to assess land cover change using two land cover maps in the Houston areas.
# This script performs basic analyses for the Exercise 1 using Census data for Syracuse.
# The overall goal is to explore spatial autocorrelation and aggregation of units of analyses.     

#AUTHORS: Benoit Parmentier                                             
#DATE CREATED: 03/21/2017 
#DATE MODIFIED: 05/11/2018
#Version: 1
#PROJECT: AAG 2018 workshop and Sesync Geopstial Data Analyses course, Geocompuation Yale
#TO DO:
#
#COMMIT: workshop geocomupation Yale
#
#################################################################################################

###Loading R library and packages                                                      
library(gstat) #spatial interpolation and kriging methods
library(sp) # spatial/geographic objects and functions
library(rgdal) #GDAL/OGR binding for R with functionalities
library(spdep) #spatial analyses operations, functions etc.
library(gtools) # contains mixsort and other useful functions
library(maptools) # tools to manipulate spatial data
library(parallel) # parallel computation, part of base package no
library(rasterVis) # raster visualization operations
library(raster) # raster functionalities
library(forecast) #ARIMA forecasting
library(xts) #extension for time series object and analyses
library(zoo) # time series object and analysis
library(lubridate) # dates functionality
library(colorRamps) #contains matlab.like color palette
library(rgeos) #contains topological operations
library(sphet) #contains spreg, spatial regression modeling
library(BMS) #contains hex2bin and bin2hex, Bayesian methods
library(bitops) # function for bitwise operations
library(foreign) # import datasets from SAS, spss, stata and other sources
library(gdata) #read xls, dbf etc., not recently updated but useful
library(classInt) #methods to generate class limits
library(plyr) #data wrangling: various operations for splitting, combining data
library(readxl) #functionalities to read in excel type data

###### Functions used in this script

create_dir_fun <- function(outDir,out_suffix=NULL){
  #if out_suffix is not null then append out_suffix string
  if(!is.null(out_suffix)){
    out_name <- paste("output_",out_suffix,sep="")
    outDir <- file.path(outDir,out_name)
  }
  #create if does not exists
  if(!file.exists(outDir)){
    dir.create(outDir)
  }
  return(outDir)
}

#####  Parameters and argument set up ###########

in_dir_var <- "/home/user/ost4sem/exercise/Exercise_1/data"
out_dir <- "/home/user/ost4sem/exercise/Exercise_1/outputs"

file_format <- ".tif" #PARAM5
NA_value <- -9999 #PARAM6
NA_flag_val <- NA_value #PARAM7
out_suffix <-"exercise1_05102018" #output suffix for the files and ouptu folder #PARAM 8
create_out_dir_param=TRUE #PARAM9

################################   START SCRIPT   ###################################

## First create an output directory

if(is.null(out_dir)){
  out_dir <- dirname(in_dir) #output will be created in the input dir
}

out_suffix_s <- out_suffix #can modify name of output suffix
if(create_out_dir_param==TRUE){
  out_dir <- create_dir_fun(out_dir,out_suffix_s)
  setwd(out_dir)
}else{
  setwd(out_dir) #use previoulsy defined directory
}

### PART I: EXPLORE DATA: READ AND DISPLAY #######

ct_2000_fname <- "ct_00.shp" # CT_00: Cencus Tracts 2000
bg_2000_fname <- "bg_00.shp" # BG_00: Census Blockgroups 2000
bk_2000_fname <- "bk_00.shp" # BK_00: Census Blocks 2000

census_table_fname <- "census.csv" #contains data from census to be linked
soil_PB_table_fname <- "Soil_PB.csv" #same as census table

metals_table_fname <- "SYR_metals.xlsx" #contains metals data to be linked

ct_2000_sp <- readOGR(dsn=in_dir_var,sub(".shp","",basename(ct_2000_fname))) #read in shapefile
bg_2000_sp <- readOGR(dsn=in_dir_var,sub(".shp","",basename(bg_2000_fname)))
bk_2000_sp <- readOGR(dsn=in_dir_var,sub(".shp","",basename(bk_2000_fname)))

census_syr_df <- read.table(file.path(in_dir_var,census_table_fname),sep=",",header=T) #read in textfile
metals_df <-read_excel( file.path(in_dir_var,metals_table_fname),1) #use function from readxl

#Soil lead samples: UTM z18 coordinates
soil_PB_df <- read.table(file.path(in_dir_var,soil_PB_table_fname),sep=",",header=T) #point locations

dim(census_syr_df) #47 spatial entities
dim(ct_2000_sp) #47 spatial entities
dim(metals_df) #47 entities
dim(bg_2000_sp) #147 spatial entities

###PRODUCE MAPS OF 2000 Population #########

#First need to link it.

names(bg_2000_sp) #missing census data
names(census_syr_df)
#key is "TRACT" but with a different format.
#First fix the format
head(bg_2000_sp)
head(census_syr_df$BKG_KEY)
#as.numeric(as.character(ct_2000_sp$TRACT))
ct_2000_sp$TRACT <- as.numeric(as.character(ct_2000_sp$TRACT)) 

## Join based on common key id
bg_2000_sp <- merge(bg_2000_sp,census_syr_df,by="BKG_KEY") #Join 
#Plot the spatial object
spplot(bg_2000_sp,"POP2000",main="POP2000") #quick visualization of population 

##Aggregate data from block group to census

### Summarize by census track
census_2000_sp <- aggregate(bg_2000_sp , by="TRACT",FUN=sum)

### Check if the new geometry of entities is the same as census
plot(census_2000_sp)
plot(ct_2000_sp,border="red",add=T)
nrow(census_2000_sp)==nrow(ct_2000_sp)

df_summary_by_census <- aggregate(. ~ TRACT, bg_2000_sp , FUN=sum) #aggregate all variables from the data.frame

##Join by key table id:
dim(ct_2000_sp)
ct_2000_sp <- merge(ct_2000_sp,df_summary_by_census,by="TRACT")
dim(ct_2000_sp)

#save as sp and text table
#write.table(file.path(out_dir,)

### Do another map with different class intervals: 

title_str <- "Population by census tract in 2000"
range(ct_2000_sp$POP2000)
col_palette <- matlab.like(256)

## 9 classes with fixed and constant break
break_seq <- seq(0,9000,1000)
breaks.qt <- classIntervals(ct_2000_sp$POP2000, n=length(break_seq), 
                            style="fixed", fixedBreaks=break_seq, intervalClosure='right')

## generate plot using sp function:
p_plot_pop2000_ct <- spplot(ct_2000_sp,
                            "POP2000",
                            col="transparent", #transprent color boundaries for polygons
                            col.regions = col_palette ,
                            main=title_str,
                            at = breaks.qt$brks)
print(p_plot_pop2000_ct)

### Another map with different class intervals

breaks.qt <- classIntervals(ct_2000_sp$POP2000, n = 6, style = "quantile", intervalClosure = "right")

p_plot_pop2000_ct <- spplot(ct_2000_sp,
                            "POP2000",
                            col="transparent", #transprent color boundaries for polygons
                            col.regions = col_palette,
                            main=title_str,
                            at = breaks.qt$brks)
print(p_plot_pop2000_ct)

####### PART II: SPATIAL QUERY #############

## Join metals to census track 
## Join lead (pb) measurements to census tracks

#metals_df <- read.xls(file.path(in_dir_var,metals_table_fname),sep=",",header=T)
metals_df <-read_excel( file.path(in_dir_var,metals_table_fname),1) #use function from readxl

head(soil_PB_df)
head(metals_df)

##This suggests matching to the following spatial entities
nrow(metals_df)==nrow(ct_2000_sp)
#nrow(soil_PB_df)==nrow(bg_2000_sp)

#dim(bg_2000_sp)
metals_df$TRACT <- metals_df$ID
census_metals_sp <- merge(ct_2000_sp,metals_df,by="TRACT")

########processing lead data
### Now let's plot lead data 
#Soil lead samples: UTM z18 coordinates
soil_PB_df <- read.table(file.path(in_dir_var,soil_PB_table_fname),sep=",",header=T) #point locations

proj4string(census_metals_sp) #
names(soil_PB_df)
names(soil_PB_df) <- c("x","y","ID","ppm") 
soil_PB_sp <- soil_PB_df
class(soil_PB_df)
coordinates(soil_PB_sp) <- soil_PB_sp[,c("x","y")]
class(soil_PB_sp)
proj4string(soil_PB_sp) <- proj4string(census_metals_sp)
dim(soil_PB_sp)
soil_PB_sp <- soil_PB_sp[,c("ID","ppm","x","y")]

plot(census_metals_sp)
plot(soil_PB_sp,add=T)

###### Spatial query: associate points of pb measurements to each census tract
### Get the ID and 

soil_tract_id_df <- over(soil_PB_sp,census_2000_sp,fn=mean)
soil_PB_sp <- intersect(soil_PB_sp,census_2000_sp)
head(soil_PB_sp$ID)==head(soil_PB_sp$ID)
names(soil_PB_sp)
soil_PB_sp <- rename(soil_PB_sp, c("d"="TRACT")) #from package plyr

census_pb_avg <- aggregate(ppm ~ TRACT,(soil_PB_sp),FUN=mean)
census_pb_avg <- rename(census_pb_avg,c("ppm"="pb_ppm"))

##Now join
census_metals_pb_sp <- merge(census_metals_sp,census_pb_avg,by="TRACT")
### write out final table and shapefile

outfile<-paste("census_metals_pb_sp","_",
               out_suffix,sep="")
writeOGR(census_metals_pb_sp,dsn= out_dir,layer= outfile, driver="ESRI Shapefile",overwrite_layer=TRUE)

outfile_df_name <- file.path(out_dir,paste0(outfile,".txt"))
write.table(as.data.frame(census_metals_pb_sp),file=outfile_df_name,sep=",")

########### PART III: RASTER FROM KRIGING                 ######################
#Generating raster lead surface from point and comparing aggregation ###################

#Now generate a raster image to create grid of cell for kriging
extent_reg <- extent(census_metals_pb_sp)
plot(extent_reg)
plot(census_metals_pb_sp,add=T)

extent_matrix <- as.matrix(extent_reg)
extent_matrix

x_length_reg <- extent_matrix[1,2] - extent_matrix[1,1] 
y_length_reg <- extent_matrix[2,2] - extent_matrix[2,1] 

print(c(x_length_reg,y_length_reg))

## Based on the size of the extent, let's set the size for our new raster layer: 
#we don't want too fine as resolution: let's do 100m, it will keep the grid small

res_val <- 100
r = raster(ext=extent_reg, res=res_val)
dim(r)
values(r) <- 1:ncell(r) # Assign values to raster, ID for each pixel
#assign projection system
projection(r) <- proj4string(census_metals_pb_sp)

######Visualize the data first

plot(r)
#generate grid from raster as poly for visualization
r_poly<- rasterToPolygons(r)
plot(extent_reg,add=T,col="red")
plot(census_metals_pb_sp,border="blue",add=T)
### Let's show the grid first
plot(r_poly,add=T)

## Transform the raster layer into a sp Grid object for kriging
r_sgdf <- as(r, 'SpatialGridDataFrame')
class(r_sgdf)

## Generate and plot a sample variogram from lead data
v_ppm <- variogram(ppm ~ 1,soil_PB_sp)
plot(v_ppm)

## Fit a variogram model from lead data

v_ppm_fit <- fit.variogram(v_ppm,model=vgm(1,"Sph",900,1))
plot(v_ppm,v_ppm_fit)

##Generate a kriging surface using data and modeled variogram: this may take more than 3 minutes
ppm_lead_spg <- krige(ppm ~ 1, soil_PB_sp, r_sgdf, model=v_ppm_fit)

class(ppm_lead_spg)
r_lead <- raster(ppm_lead_spg)
rm(ppm_lead_spg) #remove grid object from memory
r_lead #examine new layer

col_palette <- matlab.like(256)
plot(r_lead,col=col_palette)
plot(census_metals_pb_sp,border="blue",add=T)

## Save raster layers produced from kriging
raster_name <- file.path(out_dir,paste0("r_lead",out_suffix,file_format))
writeRaster(r_lead,filename = raster_name,overwrite=T)

#### Comparison of aggregations ###
## Compare values from averages from kriging surface and averages from block groups

census_lead_sp <- extract(r_lead,census_metals_pb_sp,sp=T,fun=mean) #extract average values by census track
spplot(census_metals_pb_sp,"pb_ppm",col.regions=col_palette,main="Averaged from blockgroups") #
spplot(census_lead_sp,"var1.pred",col.regions=col_palette,main="Averaged from kriging ") 

census_lead_sp$diff <- census_metals_pb_sp$pb_ppm - census_lead_sp$var1.pred #comparing the averages
hist(census_lead_sp$diff)
spplot(census_lead_sp,"diff",col.regions=col_palette,main="Difference in averages")

##### PART IV: Spatial autocrrelation and regression #############
## Examine spatial autocorrelation
#Examine the relationship between metals, Pb and vulnerable populations in Syracuse

list_nb <- poly2nb(census_lead_sp) #generate neighbours based on polygons
summary(list_nb)
plot(census_lead_sp,border="blue")
plot.nb(list_nb,coordinates(census_lead_sp),add=T)

#generate weights
#nb2listw
list_w <- nb2listw(list_nb, glist=NULL, style="W", zero.policy=NULL) #use row standardized
can.be.simmed(list_w)
summary(list_w)

## Compute Moran's I and display it
moran(census_lead_sp$pb_ppm,list_w,n=nrow(census_lead_sp), Szero(list_w))
moran.plot(census_lead_sp$pb_ppm, list_w,
           labels=as.character(census_lead_sp$TRACT), pch=19)

##### Now do a spatial regression

## Is there are relationship between minorities and high level of lead?
# As a way to explore use, perc_hispa as explanatory variable

#linear model without taking into account spatial autocorrelation
mod_lm <- lm(pb_ppm ~ perc_hispa, data=census_lead_sp)
#autoregressive model
mod_lag <- lagsarlm(pb_ppm ~ perc_hispa, data=census_lead_sp, list_w, tol.solve=1.0e-30)

### Checking for autocorrelation in residuals
moran.test(mod_lm$residuals,list_w)
moran.test(mod_lag$residuals,list_w) #Note that Moran'sI is close to zero in the lag model

#### Compare Moran's I from raster to Moran's I from polygon sp
# Rook's case
f <- matrix(c(0,1,0,1,0,1,0,1,0), nrow=3)
Moran(r_lead, f) 
r_moran <- MoranLocal(r_lead)
plot(r_moran) # hotspots?

###################### END OF SCRIPT #####################

";i:1;s:5:"bash|";i:2;s:46:"exercise1_spatial_analyses_Syracuse_05112018.R";}i:2;i:72;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:13620;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:13620;}}