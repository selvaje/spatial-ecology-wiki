a:69:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:29:"Create maps using open layers";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:46;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Reproject vector and plot it over google map";i:1;i:2;i:2;i:46;}i:2;i:46;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:46;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:46;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:184:"We use the ward administration boundary of Cornwall as vector layer and overlay it to google map. The ward layer need to be reprojected into epsg:3856 map projection to harmonize maps.";}i:2;i:104;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:288;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:949:"
library(dismo)
system("wget http://www.spatial-ecology.net/ost4sem/exercise/r_ecoservice/vector/cornwall_agri.zip")
system("unzip cornwall_agri.zip")

# load vector
ward <- shapefile("cornwall.shp") 

# Reproject vector using raster library required by dismo
ward.84 <- spTransform(ward,CRS("+init=epsg:3857")) 

# Load google map using the "Cornwall" location as google query
cornwall.sat <- gmap("Cornwall",type="satellite") 
plot(cornwall.sat)  # plot the map

# Overlay the vector layer on the raster layer
plot(ward.84, add = TRUE, lwd =1, ext = extent(ward.84), border = "yellow

# Plot small area within a region 
Lizard.sat <- gmap("Lizard, Cornwall",type="satellite") 
plot(Lizard.sat)

# Plot small area within a region using google hybrid map
Lizard.hybrid <- gmap("Lizard, Cornwall",type="hybrid") 
plot(Lizard.hybrid)" )

# Plot a town suing the terrain google map
Matera.terrain <- gmap("Matera",type="terrain") 
plot(Matera.terrain)
";i:1;s:1:"r";i:2;N;}i:2;i:295;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:295;}i:11;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":wiki:rstat:goog_vect.png";i:1;s:0:"";i:2;N;i:3;s:3:"250";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1256;}i:12;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:31:":wiki:rstat:matera_gterrain.png";i:1;s:0:"";i:2;N;i:3;s:3:"200";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1290;}i:13;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:26:":wiki:rstat:lizard_sat.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1330;}i:14;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:29:":wiki:rstat:lizard_hybrid.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1365;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1403;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1405;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1407;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:39:"Raster layer overlay with OpenStreetMap";i:1;i:2;i:2;i:1407;}i:2;i:1407;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1407;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1407;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:214:"We use the bounding box of the ward administrative layer in Cornwall UK to download the corresponding study area from OpenStreetMap raster layer. We have to define the bounding box in lat long epsg:4326 projection.";}i:2;i:1460;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1674;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:212:"
Successively we load the soil carbon map overwrite its projection (British National Grid projection epsg:27700) since the metafile is absent; reproject from epsg :27700 to the OpenStreetMap projection epsg 3857.";}i:2;i:1676;}i:24;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1888;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:"
Finally we can overlay the carbon soil map to openstreetmap.";}i:2;i:1890;}i:26;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1951;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1953;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1954;}i:29;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:13:"noteimportant";}i:2;i:1;i:3;s:16:"<note important>";}i:2;i:1954;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:85:"N.B. We have downloaded the soil carbon content map needed here below, in the raster ";}i:2;i:3;i:3;s:85:"N.B. We have downloaded the soil carbon content map needed here below, in the raster ";}i:2;i:1970;}i:31;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:22:"wiki:rstat:r_load_rast";i:1;s:28:" data visualization tutorial";}i:2;i:2055;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:1:".";}i:2;i:3;i:3;s:1:".";}i:2;i:2110;}i:33;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:2111;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:138:"
# install rjava from the bash shell it is a needed dependency for later
sudo apt-get install r-cran-rjava
# enter R as super user
sudo R
";i:1;s:4:"bash";i:2;N;}i:2;i:2125;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1223:"
install.packages("OpenStreetMap")
library(OpenStreetMap)
library(rgdal)
library(raster)
# Reproject ward layer to lat lon
ward.LatLon <- spTransform(ward,CRS("+init=epsg:4326"))

#Use lat long extents to load OpenStreetMap layer
cornwall.osm = openmap(c(lat = ward.LatLon@bbox[2,2],lon= ward.LatLon@bbox[1,1] ),c(lat = ward.LatLon@bbox[2,1],lon = ward.LatLon@bbox[1,2]), minNumTiles = 9, type="osm")
# Plot the map
plot(cornwall.osm)

# Load the soil carbon content map for Cornwall. 
soil.carbon=raster(readGDAL("carS_m9.asc"))

# Write the projection type to this layer
str(soil.carbon@crs) # check projection

crs(soil.carbon)<- "+proj=tmerc +lat_0=49 +lon_0=-2 +k=0.9996012717 +x_0=400000 +y_0=-100000 +ellps=airy +towgs84=446.448,-125.157,542.06,0.15,0.247,0.842,-20.489 +units=m +no_defs"
str(soil.carbon@crs) # check projection now

#Define the epsg 4326 projection 
sr4326="+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +no_defs"

# Reproject from epsg:22770 to epsg:4326
soil.carbon4326 <-  projectRaster(soil.carbon, crs = sr4326)

Plot the soil carbon map in transparency with OpenStreetMap
plot(soil.carbon4326, col=rainbow(25, alpha=0.35), add=TRUE)

";i:1;s:1:"r";i:2;N;}i:2;i:2284;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2284;}i:37;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:28:":wiki:rstat:cornwall_osm.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3519;}i:38;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:27:":wiki:rstat:soilcar_osm.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3556;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3592;}i:40;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3595;}i:41;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"Vector layer overlay with Stamen-Watercolor";i:1;i:2;i:2;i:3595;}i:2;i:3595;}i:42;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3595;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3595;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:159:"We Reproject the ward vector layer to lat long (epsg:4326) projection, so we can query and download the stamen watercolor rater map using the openmap function.";}i:2;i:3652;}i:45;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3811;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:"
Next, we reproject the ward layer in the openStreetMap projection  (epsg:4326) to overlay it with the raster.";}i:2;i:3813;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3923;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:397:"

ward.LatLon <- spTransform(ward,CRS("+init=epsg:4326"))
cornwall.watercolor = openmap(c(lat = ward.LatLon@bbox[2,2],lon= ward.LatLon@bbox[1,1] ),c(lat = ward.LatLon@bbox[2,1],lon = ward.LatLon@bbox[1,2]), type="stamen-watercolor")
plot(cornwall.watercolor)
ward.3857 <- spTransform(ward,CRS("+init=epsg:3857"))
plot(ward.3857, add = TRUE, lwd =1, ext = extent(ward.3857), border = "darkgreen" )
";i:1;s:1:"r";i:2;N;}i:2;i:3930;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3930;}i:50;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:30:":wiki:rstat:water_cornwall.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:4338;}i:51;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:35:":wiki:rstat:water_vect_cornwall.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:4377;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4421;}i:53;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4423;}i:54;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"Define a study area with google, plot OpenStreetMap";i:1;i:2;i:2;i:4423;}i:2;i:4423;}i:55;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4423;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4423;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:200:"The following method allow to define a study area using a google location keyword (e.g. country, town, continent, small village) and use its extent to plot openstreet map. Example for Matera in Italy:";}i:2;i:4487;}i:58;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4687;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:4689;}i:60;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4695;}i:61;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:479:"
matera.sat <- gmap("Matera",type="satellite"
matera.LatLon <- spTransform(matera.sat,CRS("+init=epsg:4326"))
sr <- "+init=epsg:4326 +proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"
matera.LatLon <-  projectRaster(matera.sat, crs = sr)
xmin=bbox(matera.LatLon)[1,1]
xmax=bbox(matera.LatLon)[1,2]
ymax=bbox(matera.LatLon)[2,2]
ymin=bbox(matera.LatLon)[2,1]
matera.osm = openmap( c(lat = ymax, lon = xmin ) , c(lat = ymin, lon = xmax), type="osm")
plot(matera.osm)
";i:1;s:1:"r";i:2;N;}i:2;i:4695;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4695;}i:63;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:34:":wiki:rstat:plot_matera_google.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:5185;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:5228;}i:65;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:26:":wiki:rstat:matera_osm.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:5229;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5264;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5273;}i:68;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5273;}}