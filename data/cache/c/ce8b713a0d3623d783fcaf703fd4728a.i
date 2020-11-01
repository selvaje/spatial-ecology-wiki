a:181:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:32:"Species Distribution Modeling II";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Script written by Adam M. Wilson, adapted by Marta A. Jarzyna, November 2015 ";}i:2;i:49;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:126;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:126;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:290:"In this session we will:
1. Read in species occurrence and range data
2. Pre-process environmental data
3. Use hSDM package to fit 2 hierarchical Bayesian model while accounting for species imperfect detection
4. Predict across the landscape and compare predictive abilities of both models.";}i:2;i:128;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:419;}i:9;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:732:" rm(list=ls(all=TRUE))
 
 #define working directory
 wdir <- "/media/sf_LVM_share" 
 setwd(wdir)
 
 #define data directory - this is where we store the data, but also where we will save the output to
 datadir <- "/media/sf_LVM_share/data" 
 
 # if your shared folder is not writable, create a different folder for the output
 if(!file.exists("~/sdm_out")) dir.create("~/sdm_out", recursive=T)
 outdir <- "~/sdm_out"
 
 # Load necessary libraries
 require(rgdal)
 require(lattice)
 require(ggplot2)
 
 packages=c("hSDM","dismo","maptools","sp",
         "maps","coda","rgdal","rgeos",
         "doParallel","reshape",
         "ggplot2","knitr","rasterVis","texreg")
         
 l=lapply(packages, library, character.only=T,quietly=T)";}i:2;i:419;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:419;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:223:"We will use Montane woodcreper (Lepidocolaptes lacrymiger) as example species. This species has a large range, occurring from the coastal cordillera of Venezuela along the Andes south to south-east Peru and central Bolivia.";}i:2;i:1201;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1425;}i:13;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:786:" # Read in species occurrence data and species range
 # Species: Montane woodcreper, Lepidocolaptes lacrymiger
 # point occurrence data
 points <- as.data.frame(read.csv("/media/sf_LVM_share/data/occurrence/Lepidocolaptes_lacrymiger_ebird.csv", header=TRUE))
 head(points)
 presence <- matrix(1,nrow(points),1)
 points <- cbind(points,presence)
 
 # retrieving spatial coordinates from a Spatial object
 points <- SpatialPointsDataFrame(points[,c(3,2)], points, coords.nrs = numeric(0), proj4string = CRS(as.character(NA)), match.ID = TRUE)
 projection(points)="+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
 plot(points)
 
 # Species' range
 range <- readOGR(".", "cartodb-query")
 range
 plot(range, add=TRUE)
 
 # Check out the data structure:
 head(points[,-1])
 ";}i:2;i:1425;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1425;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"Explore observer effort: sampling duration, distance travelled, and area surveyed.";}i:2;i:2255;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2337;}i:17;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:201:" points.m <- as.data.frame(points)
 
 ggplot(points.m,aes(
x=effort_distance_km))+
xlab("Sampling Distance (km)")+
geom_histogram(binwidth = .1)+scale_x_log10()+
geom_vline(xintercept=c(1,5),col="red")";}i:2;i:2337;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2337;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Also note that there are many records with missing spatial certainty values.";}i:2;i:2555;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2631;}i:21;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:88:" table("Distance/Area"=!is.na(points$effort_distance_km)| !is.na(points$effort_area_ha))";}i:2;i:2631;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2631;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:184:"For this exercise, we'll simply remove points with large or unknown spatial uncertainty.  Incorporating this spatial uncertainty into distribution models is an active area of research.";}i:2;i:2724;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2908;}i:25;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:248:" # Filter the data below thresholds specified above using `filter` from the [dplyr library](http://cran.r-project.org/package=dplyr).
 cdis=5     # Distance in km
 points=points[(points$effort_distance_km<=cdis& !is.na(points$effort_distance_km)),]";}i:2;i:2908;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2908;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Load eBird sampling dataset";}i:2;i:3165;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3192;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1036:" # link to global sampling raster
 gsampling=raster(file.path(datadir,"eBirdSampling_filtered.tif"))
 names(gsampling)="trials"
 
 # crop to species range to create modelling domain
 sampling=crop(gsampling,range,file.path(outdir,"sampling.grd"),overwrite=T)   
 # assign projection
 projection(sampling)="+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
 
 # convert to points within data region
 # samplingp=as(sampling,"SpatialPointsDataFrame")
 
 # Create a combined presence-nondetection point dataset
 presences=rasterize(as(points,"SpatialPoints"),sampling,fun='count',background=0)
 fitdata=cbind.data.frame(presences=values(presences),trials=values(sampling),coordinates(presences))
 
 ## filter to locations with at least one trial
 fitdata=fitdata[fitdata$trials>0,]
 
 # Convert to a spatialDataFrame to faciliate linking with georeferenced environmental data.
 coordinates(fitdata)=c("x","y")
 projection(fitdata)="+proj=longlat +datum=WGS84 +ellps=WGS84"
 fitdata@data[,c("lon","lat")]=coordinates(fitdata)";}i:2;i:3192;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3192;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Load coastline from maptools package for plotting.";}i:2;i:4276;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4326;}i:33;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:153:" coast <- map_data("world",
                xlim=c(bbox(range)[1,1]-1,bbox(range)[1,2]+1),
                ylim=c(bbox(range)[2,1]-1,bbox(range)[2,2]+1))";}i:2;i:4326;}i:34;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:69:" ggcoast=geom_path(data=coast,aes(x=long,y=lat,group = group),lwd=.1)";}i:2;i:4487;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4487;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Plot Available Species Data";}i:2;i:4560;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4587;}i:38;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:565:" ggplot(fitdata@data,aes(y=lat,x=lon))+
  ggcoast+ 
  geom_path(data=fortify(range),
          aes(y=lat,x=long,group=piece),
          col="green")+
  geom_point(data=fitdata@data[fitdata$presences==0,],
           aes(x=lon,y=lat),pch=1,
           col="black",cex=.8,lwd=2,alpha=.3)+
  geom_point(data=fitdata@data[fitdata$presences>=1,],
           aes(x=lon,y=lat),pch=3,
           col="red",cex=2,lwd=3,alpha=1)+
  ylab("Latitude")+xlab("Longitude")+
  coord_equal()+
  xlim(c(min(fitdata$lon),max(fitdata$lon)))+
  ylim(c(min(fitdata$lat),max(fitdata$lat)))";}i:2;i:4587;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4587;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Load Environmental Data";}i:2;i:5185;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5208;}i:42;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:234:" # Like last week, we'll focus on the following variables:
 fenv <- c(
  cld="data/cloud/meanannual.tif",
  cld_intra="data/cloud/intra.tif",
  elev="data/elevation_mn_GMTED2010_mn.tif",
  forest="data/tree_mn_percentage_GFC2013.tif")";}i:2;i:5208;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5208;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"To facilitate modelling, let's crop the global rasters to a smaller domain.  We can use the extent of the expert range and the ";}i:2;i:5456;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:8:"`crop()`";}i:2;i:5;i:3;s:8:"`crop()`";}i:2;i:5583;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" function in raster package.";}i:2;i:5591;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5619;}i:48;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:225:" # crop to species domain and copy to project folder 
 env <- foreach(i=1:length(fenv))%do%{
  fo=file.path(outdir,paste0(names(fenv)[i],"_clipped.grd"))
  crop(raster(file.path(wdir,fenv[i])),range,file=fo,overwrite=T)   
 }";}i:2;i:5619;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5619;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Read the environmental data in as a raster stack";}i:2;i:5856;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5904;}i:52;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:364:" env <- stack(list.files(path = outdir, pattern="*_clipped.grd$" , full.names = TRUE ))
 env
 #aggregate data to save space
 ag.env <- aggregate(env,4,fun=mean,na.rm=TRUE)
 ag.env
 # rename layers for convenience
 names(ag.env)=names(fenv)
 # mask by elevation to set ocean to 0
 ag.env=mask(ag.env,ag.env[["elev"]],maskvalue=0)
 # check out the plot
 plot(ag.env)";}i:2;i:5904;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5904;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Variable selection is tricky business and we're not going to dwell on it here";}i:2;i:6292;}i:55;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:6369;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" We'll use the following variables.";}i:2;i:6372;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6407;}i:58;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:42:" vars=c("cld","cld_intra","elev","forest")";}i:2;i:6407;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6407;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"Scaling and centering the environmental variables to zero mean and variance of 1, using the ";}i:2;i:6453;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans3";i:1;a:1:{i:0;s:11:"```scale```";}i:2;i:5;i:3;s:11:"```scale```";}i:2;i:6545;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:" function is typically a good idea.  We will do it here so that we can better interpret the regression coefficients. ";}i:2;i:6556;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6673;}i:64;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:27:" senv=scale(ag.env[[vars]])";}i:2;i:6673;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6673;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Covariate correlation";}i:2;i:6704;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6725;}i:68;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:85:" # Scatterplot matrix of the available environmental data.
 splom(senv,varname.cex=2)";}i:2;i:6725;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6725;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Annotate points with environmental data";}i:2;i:6816;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6855;}i:72;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:43:" fitdata=raster::extract(senv,fitdata,sp=T)";}i:2;i:6855;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6855;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"Due to opportunistic observations of the species, a few grid cells have more observations than trials. Let's remove them:";}i:2;i:6902;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7023;}i:76;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:230:" table(fitdata$presences>fitdata$trials)
 fitdata=fitdata[fitdata$presences<=fitdata$trials,]
 
 ## omit rows with missing data (primarily ocean pixels)
 fitdata2=na.omit(fitdata@data)
 
 kable(head(fitdata2), format = "markdown")";}i:2;i:7023;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7023;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Then transform the full gridded dataset into a ";}i:2;i:7269;}i:79;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:12:"`data.frame`";}i:2;i:5;i:3;s:12:"`data.frame`";}i:2;i:7316;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:" with associated environmental data for predicting across space.";}i:2;i:7328;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7392;}i:82;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:222:" pdata=cbind.data.frame(
  coordinates(senv),
  values(senv))
 colnames(pdata)[1:2]=c("lon","lat")
 
 ## omit rows with missing data (primarily ocean pixels)
 pdata=na.omit(pdata)
 
 kable(head(pdata), format = "markdown")";}i:2;i:7392;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7392;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:86:"Creating and running the models. This table is similar to the data available from the ";}i:2;i:7635;}i:85;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:7721;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Annotate";}i:2;i:7722;}i:87;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:7730;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:237:" function in MOL, with the exception that it contains the point data aggregated to the resolution of the environmental data. Let's compare two models, one using interpolated precipitation and the other using satellite-derived cloud data.";}i:2;i:7731;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7968;}i:90;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:244:" # Set number of chains to fit.
 mods=data.frame(
  model=c("m1","m2"),
  formula=c("~cld+elev",
          "~cld+cld_intra+elev*I(elev^2)+forest"),
  name=c( "Cloud + Elevation",
        "Full Model"))
        
 kable(mods, format = "markdown")";}i:2;i:7968;}i:91;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:204:" # Specify model run-lengths. Real model runs generally require far more iterations  to achieve convergence and aquire a suitable sample.  For now, we'll do a very short run:
 burnin=200
 mcmc=100
 thin=1";}i:2;i:8232;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8232;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Fit the models. Both site-occupancy or ZIB models (with ";}i:2;i:8447;}i:94;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:16:"`hSDM.siteocc()`";}i:2;i:5;i:3;s:16:"`hSDM.siteocc()`";}i:2;i:8503;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" or ";}i:2;i:8519;}i:96;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:12:"`hSDM.ZIB()`";}i:2;i:5;i:3;s:12:"`hSDM.ZIB()`";}i:2;i:8523;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:518:" functions respectively) can be used to model the presence-absence of a species taking into account imperfect detection. 
The site-occupancy model can be used in all cases but can be less convenient and slower to fit when the repeated visits at each site are made under the same observation conditions. While this is likely not true in this situation (the observations occurred in different years, etc.), we'll use the simpler model today. For more information about the differences, see the hSDM Vignette Section 4.3.";}i:2;i:8535;}i:98;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:9053;}i:2;i:5;i:3;s:3:"  
";}i:2;i:9053;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"
Example: ";}i:2;i:9056;}i:100;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:10:"`hSDM.ZIB`";}i:2;i:5;i:3;s:10:"`hSDM.ZIB`";}i:2;i:9066;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:490:"
The model integrates two processes, an ecological process associated to the presence or absence of the species due to habitat suitability and an observation process that takes into account the fact that the probability of detection of the species is less than one. If the species has been observed at least once during multiple visits, we can assert that the habitat at this site is suitable. And the fact that the species can be unobserved at this site is only due to imperfect detection.";}i:2;i:9076;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9566;}i:103;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9566;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"In this example we'll assume a spatially constant p(observation|presence), but it's also possible to put in covariates for this parameter.";}i:2;i:9568;}i:105;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9706;}i:106;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:1160:" # Run the model
 results=foreach(m=1:nrow(mods),.packages="hSDM") %dopar% { 
  ## if foreach/doParallel are not installed, you can use this line instead
  # for(m in 1:nrow(mods)) { 
  tres=hSDM.ZIB(
  suitability=as.character(mods$formula[m]),  #Formula for suitability
  presences=fitdata2$presences,    # Number of Observed Presences
  observability="~1",             # Formula for p(observation|presence)
  trials=fitdata2$trials,          # Number of Trials
  data=fitdata2,             # Covariates for fitting model
  suitability.pred=pdata,        # Covariates for prediction 
  mugamma=0, Vgamma=1.0E6,      # Priors on Gamma
  gamma.start=0,                # Gamma initial Value
  burnin=burnin, mcmc=mcmc, thin=thin,  # MCMC parameters
  beta.start=0,                 # Initial values for betas
  mubeta=0, Vbeta=1.0E6,        # Priors on Beta
  save.p=0,                     # Don't save full posterior on p
  verbose=1,                    # Report progress
  seed=round(runif(1,0,1e6)))   # Random seed
  tres$model=mods$formula[m]      # Add model formula to result
  tres$modelname=mods$name[m]     # Add model name to result
  return(tres)
  }";}i:2;i:9706;}i:107;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9706;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Summarize and plot posterior parameters";}i:2;i:10914;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10953;}i:110;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:604:" # The model returns full posterior distributions for all model parameters.  To summarize them you need to choose your summary metric (e.g. mean/median/quantiles). 
 params=foreach(r1=results,.combine=rbind.data.frame,.packages="coda")%do% {
   data.frame(model=r1$model,
           modelname=r1$modelname,
           parameter=colnames(r1$mcmc),
           mean=summary(r1$mcmc)$statistics[,"Mean"],
           sd=summary(r1$mcmc)$statistics[,"SD"],
           median=summary(r1$mcmc)$quantiles[,"50%"],
           HPDinterval(mcmc(as.matrix(r1$mcmc))),
           RejectionRate=rejectionRate(r1$mcmc))}";}i:2;i:10953;}i:111;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:289:" # plot it
 ggplot(params[!grepl("Deviance*",rownames(params)),],
     aes(x=mean,y=parameter,colour=modelname))+
  geom_errorbarh(aes(xmin=lower,xmax=upper,height=.1),lwd=1.5)+
  geom_point(size = 3)+xlab("Standardized Coefficient")+
  ylab("Parameter")+
  theme(legend.position="bottom")";}i:2;i:11579;}i:112;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11579;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Detection probability";}i:2;i:11885;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11906;}i:115;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:339:" # The model uses repeat observations within cells to estimate the probability observation given that the species was present.  
 pDetect <-   params[params$parameter=="gamma.(Intercept)",c("modelname","mean")]
 pDetect$delta.est <- inv.logit(pDetect$mean)
 colnames(pDetect)[2]="gamma.hat"
 kable(pDetect,row.names=F, format = "markdown")";}i:2;i:11906;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11906;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:89:"How does this change if you add environmental covariates to the observability regression?";}i:2;i:12257;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12346;}i:119;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:261:" # Predictions for each cell
 pred=foreach(r1=results,.combine=stack,.packages="raster")%dopar% {
 tr=rasterFromXYZ(cbind(x=pdata$lon,
                       y=pdata$lat,
                       pred=r1$prob.p.pred))
  names(tr)=r1$modelname    
  return(tr)
  }";}i:2;i:12346;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12346;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Compare the model predictions";}i:2;i:12625;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12654;}i:123;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:113:" predscale=scale_fill_gradientn(values=c(0,.5,1), colours=c('white','darkgreen','green'), na.value="transparent")";}i:2;i:12654;}i:124;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:716:" # set plotting limits using expert range above
 gx=xlim(extent(env)@xmin,extent(env)@xmax)
 gy=ylim(extent(env)@ymin,extent(env)@ymax)
 
 gplot(pred,maxpixels=1e5)+geom_raster(aes(fill=value)) +
  facet_wrap(~ variable) +
  predscale+
  coord_equal()+
  geom_path(data=fortify(range),
          aes(y=lat,x=long,group=piece),
          fill="red",col="red")+
  geom_point(data=fitdata@data[fitdata$presences==0,],
           aes(x=lon,y=lat,fill=1),pch=1,col="black",cex=.8,lwd=2,alpha=.3)+
  geom_point(data=fitdata@data[fitdata$presences>=1,],
           aes(x=lon,y=lat,fill=1),pch=3,col="red",cex=2,lwd=3,alpha=1)+
  ggcoast+gx+gy+ylab("Latitude")+xlab("Longitude")+
  labs(col = "p(presence)")+
  coord_equal()";}i:2;i:12771;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12771;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"Additional Models are available in the hSDM";}i:2;i:13525;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13568;}i:128;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13568;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:13570;}i:130;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:8:"`*.icar`";}i:2;i:5;i:3;s:8:"`*.icar`";}i:2;i:13574;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" functions in ";}i:2;i:13582;}i:132;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:6:"`hSDM`";}i:2;i:5;i:3;s:6:"`hSDM`";}i:2;i:13596;}i:133;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" add ";}i:2;i:13602;}i:134;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:13607;}i:135;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:15:"spatial effects";}i:2;i:3;i:3;s:15:"spatial effects";}i:2;i:13608;}i:136;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:13623;}i:137;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:" to the model as well, accounting for spatial autocorrelation of species occurrence.";}i:2;i:13624;}i:138;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:13708;}i:2;i:5;i:3;s:3:"  
";}i:2;i:13708;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:13711;}i:140;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:15:"`hSDM.binomial`";}i:2;i:5;i:3;s:15:"`hSDM.binomial`";}i:2;i:13712;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:13727;}i:142;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:20:"`hSDM.binomial.iCAR`";}i:2;i:5;i:3;s:20:"`hSDM.binomial.iCAR`";}i:2;i:13730;}i:143;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"
Simple and spatial binomial model (perfect detection).";}i:2;i:13750;}i:144;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13805;}i:145;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13805;}i:146;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:10:"`hSDM.ZIB`";}i:2;i:5;i:3;s:10:"`hSDM.ZIB`";}i:2;i:13807;}i:147;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:13817;}i:148;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:15:"`hSDM.ZIB.iCAR`";}i:2;i:5;i:3;s:15:"`hSDM.ZIB.iCAR`";}i:2;i:13820;}i:149;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:13835;}i:150;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:26:"`hSDM.ZIB.iCAR.alteration`";}i:2;i:5;i:3;s:26:"`hSDM.ZIB.iCAR.alteration`";}i:2;i:13838;}i:151;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"
Zero-inflated Binomial (example we used today).";}i:2;i:13864;}i:152;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13912;}i:153;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13912;}i:154;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:10:"`hSDM.ZIP`";}i:2;i:5;i:3;s:10:"`hSDM.ZIP`";}i:2;i:13914;}i:155;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:13924;}i:156;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:15:"`hSDM.ZIP.iCAR`";}i:2;i:5;i:3;s:15:"`hSDM.ZIP.iCAR`";}i:2;i:13927;}i:157;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:13942;}i:158;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:26:"`hSDM.ZIP.iCAR.alteration`";}i:2;i:5;i:3;s:26:"`hSDM.ZIP.iCAR.alteration`";}i:2;i:13945;}i:159;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"
Zero-inflated Poisson (Abundance data with imperfect detection).";}i:2;i:13971;}i:160;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14036;}i:161;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14036;}i:162;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:14:"`hSDM.siteocc`";}i:2;i:5;i:3;s:14:"`hSDM.siteocc`";}i:2;i:14038;}i:163;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:14052;}i:164;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:19:"`hSDM.siteocc.iCAR`";}i:2;i:5;i:3;s:19:"`hSDM.siteocc.iCAR`";}i:2;i:14055;}i:165;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"
Incorporates temporally varying environment to account for changing observation conditions. ";}i:2;i:14074;}i:166;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14167;}i:167;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14167;}i:168;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:14:"`hSDM.poisson`";}i:2;i:5;i:3;s:14:"`hSDM.poisson`";}i:2;i:14170;}i:169;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:14184;}i:170;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:19:"`hSDM.poisson.iCAR`";}i:2;i:5;i:3;s:19:"`hSDM.poisson.iCAR`";}i:2;i:14187;}i:171;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"
Simple and spatial poisson model for species abundance (perfect detection).";}i:2;i:14206;}i:172;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14282;}i:173;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14282;}i:174;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:15:"`hSDM.Nmixture`";}i:2;i:5;i:3;s:15:"`hSDM.Nmixture`";}i:2;i:14284;}i:175;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:" & ";}i:2;i:14299;}i:176;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:20:"`hSDM.Nmixture.iCAR`";}i:2;i:5;i:3;s:20:"`hSDM.Nmixture.iCAR`";}i:2;i:14302;}i:177;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"
Poisson model for abundance with imperfect detection.";}i:2;i:14322;}i:178;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14376;}i:179;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:14379;}i:180;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:14379;}}