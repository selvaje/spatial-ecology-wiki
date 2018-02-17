a:49:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:75:"A Landscape and Climate Data Logistic Model of Tsetse Distribution in Kenya";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"Reference at ";}i:2;i:91;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:72:"http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0011809";i:1;s:23:" Moore and Messina 2009";}i:2;i:104;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:205;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:206;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:208;}i:9;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:18:":wiki:untitled.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:209;}i:10;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:27:":wiki:tsetse_sinecology.png";i:1;s:0:"";i:2;N;i:3;s:3:"500";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:236;}i:11;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:24:":wiki:tzee_covariate.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:272;}i:12;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:305;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"
Reference at ";}i:2;i:307;}i:14;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:72:"http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0011809";i:1;s:23:" Moore and Messina 2009";}i:2;i:321;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:".
";}i:2;i:422;}i:16;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:424;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:426;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:428;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:76:"A Landscape and Climate Data Logistic Model of Tsetse Distribution in Uganda";i:1;i:1;i:2;i:428;}i:2;i:428;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:428;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:4054:"

library(raster)
library(ggplot2)
library(gplots)
library(mgcv)
library(hier.part)
library(rasterVis)

# The Environmental data Import
# variable list acronyms /home/user/ost4sem/exercise/geodata_SDM/SuppTab1.pdf 

# Variable selection is tricky business and we're not going to dwell on it here... We'll use the following variables.
# Precipitation Seasonality
ug_bio_15 =raster ("/home/user/ost4sem/exercise/geodata_SDM/precipitation/ug_bio_15.tif")
# Temperature Seasonality
ug_bio_4 = raster ("/home/user/ost4sem/exercise/geodata_SDM/temperature/ug_bio_4.tif")
# Normalized Difference Vegetation Index (Mean)
NDVImean =raster ("/home/user/ost4sem/exercise/geodata_SDM/vegetation/NDVImean08-11.tif") 
names(NDVImean) = "NDVImean"
# Gross Primary Productivity (Mean)
GPPmean =raster ("/home/user/ost4sem/exercise/geodata_SDM/vegetation/GPPmean08-11.tif") 
names(LAImean) = "LAImean"
# Leaf Area Index (Mean)
LAImean = raster ("/home/user/ost4sem/exercise/geodata_SDM/vegetation/LAImean08-11.tif") 
names(LAImean) = "LAImean"
# Digital elevation model 
GMTED2010 = raster ("/home/user/ost4sem/exercise/geodata_SDM/dem/GMTED2010.tif") 
# Human influence 
human =   raster("/home/user/ost4sem/exercise/geodata_SDM/humaninfluence/humanInfluence.tif")
# Lat Long
rasterX = raster ("/home/user/ost4sem/exercise/geodata_SDM/latlong/rasterX.tif")
rasterY = raster ("/home/user/ost4sem/exercise/geodata_SDM/latlong/rasterY.tif")
names(human) = "human"

# Read the environmental data in as a raster stack
env=stack( GMTED2010 , ug_bio_15, ug_bio_4, NDVImean, GPPmean, LAImean, rasterX, rasterY, human ,  full.names = TRUE )
plot(env)

# Scaling and centering the environmental variables to zero mean and variance of 1, using the scale function is typically a good idea.
vars = c("GMTED2010", "ug_bio_15","ug_bio_4","NDVImean","GPPmean","LAImean","rasterX", "rasterY" , "human")
senv=scale(env[[vars]])
plot(senv)

# Load presence and absence

presence = read.table ("/home/user/ost4sem/exercise/geodata_SDM/latlong/presence.txt")
absence = read.table ("/home/user/ost4sem/exercise/geodata_SDM/latlong/absence.txt")
points=as.data.frame(rbind(presence, absence))
names(points) = c("X","Y","PA")
coordinates(points)= ~X+Y

table(points$PA)

plot(ug_bio_15)
points(subset( points , PA == 0 )  , pch = 1  )
points(subset( points , PA == 1 ) , col='red' , pch =3 )

# Annotate the point records with the scaled environmental data

points.annot=raster::extract(senv, points , na.rm=F , SP = T , df=TRUE)
points.annot$PA = points$PA
# eliminate NA
points.annot=na.omit(points.annot)

# Variable selection 
# Covariate correlation
# Scatterplot matrix of the available environmental data.

splom(senv,varname.cex=2)

hier.part(points.annot$PA, points.annot[,2:9] , fam = "binomial",gof = "Rsqu")

# Model Fitting
# Fit a simple GLM to the data

m1glm=glm(PA ~ ug_bio_4, data=points.annot,family=binomial(logit))
m2glm=glm(PA ~ ug_bio_4 + ug_bio_15 + LAImean + NDVImean, data=points.annot,family=binomial(logit))

m1gam=gam(PA ~ GMTED2010 + ug_bio_4+ ug_bio_15 + NDVImean, data=points.annot,family=binomial(logit))
m2gam=gam(PA ~ GMTED2010 + ug_bio_4+ ug_bio_15 + NDVImean + human + s(rasterX, rasterY), data=points.annot,family=binomial(logit))


# Feel free to try various model formulas (adding or removing terms) and see how the model performs.

p1glm=raster::predict(senv,m1glm,type="response", 
                   file="/home/user/ost4sem/exercise/geodata_SDM/prediction/p1glm.tif",overwrite=T)
p2glm=raster::predict(senv,m2glm,type="response",
                   file="/home/user/ost4sem/exercise/geodata_SDM/prediction/p2glm.tif",overwrite=T)

p1gam=raster::predict(senv,m1gam,type="response",
                   file="/home/user/ost4sem/exercise/geodata_SDM/prediction/p1gam.tif",overwrite=T)
p2gam=raster::predict(senv,m2gam,type="response",
                   file="/home/user/ost4sem/exercise/geodata_SDM/prediction/p2gam.tif",overwrite=T)

plot(p1gam)
points(subset( points , PA == 0 )  , pch = 1  )
points(subset( points , PA == 1 ) , col='red' , pch =3 )

";i:1;s:2:"R|";i:2;s:6:"SDM.R ";}i:2;i:525;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:525;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"more example:";}i:2;i:4599;}i:24;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4612;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4614;}i:26;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:92:"https://github.com/adammwilson/SpatialAnalysisTutorials/blob/master/SDM_intro2/hSDM_intro.md";i:1;N;}i:2;i:4615;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4707;}i:28;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:84:"https://github.com/adammwilson/SpatialAnalysisTutorials/blob/master/SDM_intro/SDM.md";i:1;N;}i:2;i:4708;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4792;}i:30;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4793;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"
the vignette from the dismo package is also a great resource.";}i:2;i:4795;}i:32;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4857;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4859;}i:34;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:62:"http://cran.r-project.org/web/packages/dismo/vignettes/sdm.pdf";i:1;N;}i:2;i:4860;}i:35;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4922;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4924;}i:37;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4925;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"
find the right probability thresholds";}i:2;i:4927;}i:39;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4965;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:4967;}i:41;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:76:"http://cran.r-project.org/web/packages/OptimalCutpoints/OptimalCutpoints.pdf";i:1;N;}i:2;i:4968;}i:42;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5044;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:5046;}i:44;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5047;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:5049;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5049;}i:47;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5049;}i:48;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5049;}}