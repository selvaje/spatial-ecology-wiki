a:160:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"Species Distribution Modeling I";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"In this session we will:";}i:2;i:49;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:73;}i:6;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:73;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:73;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:73;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" Read in species occurrence and range data";}i:2;i:78;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:120;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:120;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:120;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:120;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" Pre-process environmental data";}i:2;i:124;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:155;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:155;}i:17;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:155;}i:18;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:155;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:68:" Fit a generalized linear model to estimate the species distribution";}i:2;i:159;}i:20;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:227;}i:21;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:227;}i:22;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:227;}i:23;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:227;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:" Predict across the landscape and write the results to disk (for use in GIS, etc.)";}i:2;i:231;}i:25;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:313;}i:26;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:313;}i:27;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:313;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:313;}i:29;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:314;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
R code courtesy of Adam M. Wilson (";}i:2;i:316;}i:31;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:84:"https://github.com/adammwilson/SpatialAnalysisTutorials/blob/master/SDM_intro/SDM.md";i:1;s:17:" original version";}i:2;i:352;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:") and adapted by Marta Jarzyna, October 2015";}i:2;i:460;}i:33;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:504;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:506;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:506;}i:36;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:70:"http://www.spatial-ecology.net/ost4sem/exercise/SDM/SDM_I_code_final.R";i:1;s:20:" SDM_I_code_final.R ";}i:2;i:508;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:605;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:607;}i:39;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:76:" wget http://www.spatial-ecology.net/ost4sem/exercise/SDM/SDM_I_code_final.R";}i:2;i:607;}i:40;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:2:" R";}i:2;i:687;}i:41;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:754:" # Set working directory
 rm(list=ls(all=TRUE))
 wdir <- "/media/sf_LVM_share" 
 setwd(wdir)
 
 # Define data directotry - this is where we store the data, but also where we will save the output to
 datadir <- "/media/sf_LVM_share/data" 
 
 # if your shared folder is not writable, create a different folder for the output
 if(!file.exists("~/sdm_out")) dir.create("~/sdm_out", recursive=T)
 outdir <- "~/sdm_out"
 
 # Loading libraries
 require(rgdal)
 require(lattice)
 require(ggplot2)
    
 packages=c("hSDM","dismo","maptools","sp","maps","coda","rgdal","rgeos","doParallel","reshape",
         "ggplot2","knitr","rasterVis","texreg")
         
 l=lapply(packages, library, character.only=T,quietly=T)
 
 rasterOptions(chunksize=1000,maxmemory=1000)";}i:2;i:693;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:693;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:223:"We will use Montane woodcreper (Lepidocolaptes lacrymiger) as example species. This species has a large range, occurring from the coastal cordillera of Venezuela along the Andes south to south-east Peru and central Bolivia.";}i:2;i:1495;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1719;}i:45;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:824:" # Read in species occurrence data and species range
 # Species: Montane woodcreper, Lepidocolaptes lacrymiger
 
 # Point occurrence data
 points <- as.data.frame(read.csv("/media/sf_LVM_share/data/occurrence/Lepidocolaptes_lacrymiger_allpoints.csv", header=TRUE))
 head(points)
 
 # indicate that these data are presences
 presence <- matrix(1,nrow(points),1)
 points <- cbind(points,presence)
 
 # retrieving spatial coordinates from a Spatial object
 points <- SpatialPointsDataFrame(points[,c(1,2)], points, coords.nrs = numeric(0), 
              proj4string = CRS(as.character(NA)), match.ID = TRUE)
 # assign projection
 projection(points)="+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
 points
 plot(points)
 
 # Species' range
 range <- readOGR(".", "cartodb-query")
 range
 plot(range, add=TRUE)";}i:2;i:1719;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1719;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Loading eBird sampling dataset, in order to obtain ";}i:2;i:2591;}i:48;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2642;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"absence";}i:2;i:2643;}i:50;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2650;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" data";}i:2;i:2651;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2657;}i:53;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:746:" # link to global sampling raster
 gsampling=raster(file.path(datadir,"eBirdSampling_filtered.tif"))
 
 # crop to species range to create modelling domain
 sampling=crop(gsampling,range,file.path(outdir,"sampling.grd"),overwrite=T)   
 
 # assign projection
 projection(sampling)="+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
 
 # convert to points within data region
 samplingp=as(sampling,"SpatialPointsDataFrame")
 samplingp=samplingp[samplingp$eBirdSampling_filtered>0,]
 
 # edit column names to allow aligning with presence observations
 colnames(samplingp@data)=c("observation")
 samplingp$presence=0
 plot(samplingp, col="red")#absences
 plot(points, add=TRUE)#presences
 plot(range, col="blue",add=TRUE)#species range";}i:2;i:2657;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2657;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Create a combined presence-nondetection point dataset";}i:2;i:3443;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3496;}i:57;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:130:" pdata <- rbind(points[,"presence"],samplingp[,"presence"])
 pdata@data[,c("lon","lat")]=coordinates(pdata)
 table(pdata$presence)";}i:2;i:3496;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3496;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Environmental data processing";}i:2;i:3634;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3663;}i:61;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:258:" # you can add a lot of other variables, but in the interest of time we'll focus on these 4
 fenv <- c(cld="data/cloud/meanannual.tif", cld_intra="data/cloud/intra.tif", elev="data/elevation_mn_GMTED2010_mn.tif", forest="data/tree_mn_percentage_GFC2013.tif")";}i:2;i:3663;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3663;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:127:"To facilitate modelling, let's crop the global rasters to a smaller domain.  We can use the extent of the expert range and the ";}i:2;i:3927;}i:64;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:8:"`crop()`";}i:2;i:5;i:3;s:8:"`crop()`";}i:2;i:4054;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" function in raster package.";}i:2;i:4062;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4090;}i:67;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:225:" # crop to species domain and copy to project folder 
 
 env <- foreach(i=1:length(fenv))%do%{
 fo=file.path(outdir,paste0(names(fenv)[i],"_clipped.grd"))
 crop(raster(file.path(wdir,fenv[i])),range,file=fo,overwrite=T)   
 }";}i:2;i:4090;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4090;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"Read the environmental data in as a raster stack and plot layers";}i:2;i:4329;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4393;}i:71;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:268:" env <- stack(list.files(path = outdir, pattern="*_clipped.grd$" , full.names = TRUE ))
 env
 
 # rename layers for convenience
 names(env)=names(fenv)
 
 # mask by elevation to set ocean to 0
 env=mask(env,env[["elev"]],maskvalue=0)
 
 # check out the plot
 plot(env)";}i:2;i:4393;}i:72;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4393;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Variable selection is tricky business and we're not going to dwell on it here";}i:2;i:4685;}i:74;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:4762;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" We'll use the following variables.";}i:2;i:4765;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4800;}i:77;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:42:" vars=c("cld","cld_intra","elev","forest")";}i:2;i:4800;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4800;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"Scaling and centering the environmental variables to zero mean and variance of 1, using the ";}i:2;i:4846;}i:80;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans3";i:1;a:1:{i:0;s:11:"```scale```";}i:2;i:5;i:3;s:11:"```scale```";}i:2;i:4938;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:261:" function is typically a good idea.  However, with so many people using this node at the same time, we'll skip this memory intensive step and use the unstandardized variables.  The downside of this is the regression coefficients are more difficult to interpret.";}i:2;i:4949;}i:82;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5210;}i:83;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:43:" #senv=scale(env[[vars]])
 senv=env[[vars]]";}i:2;i:5210;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5210;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:118:"Annotate the point records with the scaled environmental data; i.e., Add the (scaled) environmental data to each point";}i:2;i:5259;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5377;}i:87;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:122:" pointsd=raster::extract(senv,pdata,sp=T) 
 pointsd=na.exclude(pointsd)
 
 # Look at the data table:
 kable(head(pointsd))";}i:2;i:5377;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5377;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Explore the data";}i:2;i:5511;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5527;}i:91;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:415:" # Plotting the response (presence/absence data) and the predictors:
 # convert to 'long' format for easier plotting
 pointsdl=reshape::melt(pointsd@data,id.vars=c("lat","lon","presence"),variable.name="variable"
 
 ggplot(pointsdl,aes(x=value,y=presence))+facet_wrap(~variable)+
 geom_point()+
 stat_smooth(method = "lm", formula = y ~ x + I(x^2), col="red")+
 geom_smooth(method="gam",formula=y ~ s(x, bs = "cs"))";}i:2;i:5527;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5527;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:419:"Model Fitting. Here, we will fit a simple glm to the data. Choosing terms to include in a parametric model can be challenging, especially given the large number of possible interactions, etc.  In this example we'll keep it fairly simple and include only a quadratic term for elevation (as suggested by the above plot). (Feel free to try various model formulas (adding or removing terms) and see how the model performs.)";}i:2;i:5960;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6379;}i:95;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:223:" head(pointsd)
 
 #model 1
 m1 <- glm(presence~cld+elev,data=pointsd,family=binomial(logit))
 summary(m1)
 
 #model 2
 m2 <- glm(presence~cld+cld_intra+elev*I(elev^2)+forest,data=pointsd,family=binomial(logit))
 summary(m2)";}i:2;i:6379;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6379;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"Prediction; i.e., calculating estimates of probability of occurrence of Montane woodcreper for each cell. We can use the ";}i:2;i:6622;}i:98;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:9:"`predict`";}i:2;i:5;i:3;s:9:"`predict`";}i:2;i:6743;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" function in the ";}i:2;i:6752;}i:100;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:8:"`raster`";}i:2;i:5;i:3;s:8:"`raster`";}i:2;i:6769;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:" package to make the predictions across the full raster grid and save the output.";}i:2;i:6777;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6858;}i:103;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:331:"    #predictions based on model 1
 p1 <- raster::predict(senv,m1,type="response", 
 file=file.path(outdir,"prediction_m1.grd"),overwrite=T)
 
 #predictions based on model 2
 p2 <- raster::predict(senv,m2,type="response",
 file=file.path(outdir,"prediction_m2.grd"),overwrite=T)
 
 p <- stack(p1,p2); names(p)=c("Model 1","Model 2")";}i:2;i:6858;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6858;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Plot results of predictions on a map";}i:2;i:7209;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7245;}i:107;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:361:" gplot(p,max=1e5)+geom_tile(aes(fill=value))+
 facet_wrap(~variable)+
 scale_fill_gradientn(colours=c("blue","green","yellow","orange","red"),
 na.value = "transparent")+
 geom_polygon(aes(x=long,y=lat,group=group),
 data=fortify(range),fill="transparent",col="darkred")+
 geom_point(aes(x = lon, y = lat), data = points@data,col="black",size=1)+
 coord_equal()";}i:2;i:7245;}i:108;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7245;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Model evaluation. gplot(p,max=1e5)+geom";}i:2;i:7624;}i:110;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7663;}i:111;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:30:"tile(aes(fill=value))+
  facet";}i:2;i:3;i:3;s:30:"tile(aes(fill=value))+
  facet";}i:2;i:7664;}i:112;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7694;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"wrap(~variable)+";}i:2;i:7695;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7711;}i:115;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:303:"scale_fill_gradientn(
  colours=c("blue","green","yellow","orange","red"),
  na.value = "transparent")+
geom_polygon(aes(x=long,y=lat,group=group),
             data=fortify(range),fill="transparent",col="darkred")+
geom_point(aes(x = lon, y = lat), data = points@data,col="black",size=1)+
coord_equal()";}i:2;i:7711;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7711;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:151:"Model Evaluation. In general, it is a good idea to use k-fold data partitioning instead of using the data used for fitting. There is a function in the ";}i:2;i:8030;}i:118;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:7:"`dismo`";}i:2;i:5;i:3;s:7:"`dismo`";}i:2;i:8181;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" package called ";}i:2;i:8188;}i:120;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codespans1";i:1;a:1:{i:0;s:7:"`kfold`";}i:2;i:5;i:3;s:7:"`kfold`";}i:2;i:8204;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:96:" that makes this convenient. But for now, we'll just evaluate on the same data used for fitting.";}i:2;i:8211;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8307;}i:123;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:219:" # Summarize model output using `screenreg` to print a more visually pleasing summary.
 screenreg(list(m1,m2),digits = 7,doctype=FALSE,align.center=TRUE)
 #htmlreg(list(m1,m2),digits = 7,doctype=FALSE,align.center=TRUE)";}i:2;i:8307;}i:124;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8307;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Caveats of SDMs using glms:";}i:2;i:8534;}i:126;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8561;}i:127;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8561;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"(1) In this example we treated eBird ";}i:2;i:8563;}i:129;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:8600;}i:130;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:14:"non-detections";}i:2;i:3;i:3;s:14:"non-detections";}i:2;i:8601;}i:131;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:8615;}i:132;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:" as ";}i:2;i:8616;}i:133;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:8620;}i:134;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:8:"absences";}i:2;i:3;i:3;s:8:"absences";}i:2;i:8621;}i:135;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:8629;}i:136;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:" when the probability of detection given presence can be much less than zero. What are the chances that an observer would see a species in a 1km grid cell if it were present there?";}i:2;i:8630;}i:137;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:8810;}i:2;i:5;i:3;s:3:"  
";}i:2;i:8810;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:156:"(2) We ignored the spatial autocorrelation in species presences and treated each observation as an independent sample.  How can we account for this in SDMs?";}i:2;i:8813;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8969;}i:140;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8969;}i:141;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Summary:";}i:2;i:8971;}i:142;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8979;}i:143;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8979;}i:144;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"In this script we have illustrated a complete workflow, including:";}i:2;i:8981;}i:145;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9047;}i:146;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9047;}i:147;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"(1) Reading in species data";}i:2;i:9049;}i:148;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9076;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9076;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"(2) Pre-processing large spatial datasets for analysis";}i:2;i:9078;}i:151;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9132;}i:152;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9132;}i:153;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"(3) Running a (simple) logistic GLM Species Distribution Model to make a prediction of p(occurrence|environment)";}i:2;i:9134;}i:154;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9246;}i:155;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9246;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"(4) Writing results to disk.";}i:2;i:9248;}i:157;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9276;}i:158;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9278;}i:159;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:9278;}}