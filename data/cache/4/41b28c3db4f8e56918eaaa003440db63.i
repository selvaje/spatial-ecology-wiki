a:157:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"FOREST BIOMASS PRODUCTION ESTIMATE FOR ENERGETIC USE";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"Multicrireria analysis and fuzzy logic approach can help the estimation of potential forest biomass production according to environmental variability.";}i:2;i:68;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:218;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:220;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"INTRODUCTION";i:1;i:2;i:2;i:220;}i:2;i:220;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:220;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:220;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:294:"In this exercise we will estimate the potential forest biomass retractable from the forested area of Potenza territory. This will allow us to practice and learn some Bash shell scripting and awk commands within the grass environment. We will also automatically generate maps of covered forest. ";}i:2;i:245;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:539;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:541;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"General framework";i:1;i:3;i:2;i:541;}i:2;i:541;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:541;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:541;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:396:"The use of GIS system enables data integration of different origin and nature, that refer to the same area (criteria). The overlay operation allows you to overlope two or more layers in the form of maps allowing the analysis of the attributes that occupy the same geographical space. Multicriterial spatial techniques use GIS as basic structure of the analysis of multiple synergistic factors.";}i:2;i:570;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:966;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:968;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Project objectives";i:1;i:3;i:2;i:968;}i:2;i:968;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:968;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:968;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"The main objective of this exercise is to estimate the potential forest biomass that can be logged. GIS and multicriterial analysis, are applied to analyse the various factors that contribute to increase or reduce the forest biomass production. ";}i:2;i:997;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1242;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1244;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"METADATA";i:1;i:2;i:2;i:1244;}i:2;i:1244;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1244;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1244;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"For this project the following dataset have been analysed:";}i:2;i:1265;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1323;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1325;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Raster data";i:1;i:3;i:2;i:1325;}i:2;i:1325;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1325;}i:33;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1346;}i:34;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"A portion of Basilicata map in raster file.";i:1;i:1;i:2;i:1346;}i:2;i:1346;}i:35;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1346;}i:36;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:46:"
# A portion of Basilicata map in raster file.";}i:2;i:1346;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:614:" 
user@ubuntu:~/ost4sem/project/input/raster$ gdalinfo Pantano.tif 
Driver: GTiff/GeoTIFF
Files: Pantano.tif
Size is 4167, 3089
Coordinate System is `'
Metadata:
  TIFFTAG_XRESOLUTION=500
  TIFFTAG_YRESOLUTION=500
  TIFFTAG_RESOLUTIONUNIT=2 (pixels/inch)
Image Structure Metadata:
  INTERLEAVE=PIXEL
Corner Coordinates:
Upper Left  (    0.0,    0.0)
Lower Left  (    0.0, 3089.0)
Upper Right ( 4167.0,    0.0)
Lower Right ( 4167.0, 3089.0)
Center      ( 2083.5, 1544.5)
Band 1 Block=4167x8 Type=Byte, ColorInterp=Red
Band 2 Block=4167x8 Type=Byte, ColorInterp=Green
Band 3 Block=4167x8 Type=Byte, ColorInterp=Blue
";i:1;N;i:2;N;}i:2;i:1398;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2022;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Vector Data";i:1;i:3;i:2;i:2022;}i:2;i:2022;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2022;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2819:"
Layer name: CFR_BASILICATA_ALDO_VERIFICATO_INTERSECT_AREA
Geometry: Polygon
Feature Count: 9558
Extent: (528851.122213, 4416607.927641) - (657652.441710, 4554165.280001)
Layer SRS WKT:
PROJCS["WGS_1984_UTM_Zone_33N",
    GEOGCS["GCS_WGS_1984",
        DATUM["WGS_1984",
            SPHEROID["WGS_1984",6378137.0,298.257223563]],
        PRIMEM["Greenwich",0.0],
        UNIT["Degree",0.0174532925199433]],
    PROJECTION["Transverse_Mercator"],
    PARAMETER["False_Easting",500000.0],
    PARAMETER["False_Northing",0.0],
    PARAMETER["Central_Meridian",15.0],
    PARAMETER["Scale_Factor",0.9996],
    PARAMETER["Latitude_Of_Origin",0.0],
    UNIT["Meter",1.0]]
CODICEREGI: String (254.0)
CODICEPROV: String (254.0)
CODICECOMU: String (254.0)
NOMECOMUNE: String (254.0)
COM_MONTAN: String (254.0)
ID_PROGRES: Real (19.0)
ID_SEZ: Integer (7.0)
ORTOFOTO: Integer (6.0)
PRIM_LIV: Integer (3.0)
SEC_LIV: Integer (3.0)
TERZ_LIV: Integer (3.0)
SP1: Integer (3.0)
SP2: Integer (3.0)
SP3: Integer (3.0)
SP4: Integer (3.0)
SP5: Integer (3.0)
SP6: Integer (3.0)
SP7: Integer (3.0)
SP8: Integer (3.0)
SP9: Integer (3.0)
SP10: Integer (3.0)
SP1_: Real (16.0)
SP2_: Real (16.0)
SP3_: Real (16.0)
SP4_: Real (16.0)
COPATT: Integer (3.0)
COPREG: Integer (3.0)
ACCESS: Integer (3.0)
NATUR: Integer (3.0)
VIGORE: Integer (3.0)
VALORICR: Integer (3.0)
FRUIB: Integer (3.0)
NOTE: String (200.0)
SUPERF_HA: Real (19.11)
QUOTA_MIN: Real (11.0)
QUOTA_MAX: Real (11.0)
QUOTA_MEDI: Real (19.4)
PEND_MIN: Real (19.4)
PEND_MAX: Real (19.4)
PEND_MEDIA: Real (19.4)
F_AREA: Real (19.11)
OGRFeature(CFR_BASILICATA_ALDO_VERIFICATO_INTERSECT_AREA):0
  CODICEREGI (String) = 17
  CODICEPROV (String) = 076
  CODICECOMU (String) = 043
  NOMECOMUNE (String) = LAVELLO
  COM_MONTAN (String) = LAVELLO E MONTEMILONE
  ID_PROGRES (Real) =                  31
  ID_SEZ (Integer) = 2
  ORTOFOTO (Integer) = 453070
  PRIM_LIV (Integer) = 136
  SEC_LIV (Integer) = 200
  TERZ_LIV (Integer) = 315
  SP1 (Integer) = 134
  SP2 (Integer) = 95
  SP3 (Integer) = 78
  SP4 (Integer) = 0
  SP5 (Integer) = 0
  SP6 (Integer) = 0
  SP7 (Integer) = 0
  SP8 (Integer) = 0
  SP9 (Integer) = 0
  SP10 (Integer) = 0
  SP1_ (Real) =               50
  SP2_ (Real) =               20
  SP3_ (Real) =               20
  SP4_ (Real) =                0
  COPATT (Integer) = 902
  COPREG (Integer) = 0
  ACCESS (Integer) = 401
  NATUR (Integer) = 503
  VIGORE (Integer) = 602
  VALORICR (Integer) = 702
  FRUIB (Integer) = 802
  NOTE (String) = (null)
  SUPERF_HA (Real) =      29.52825226084
  QUOTA_MIN (Real) =         107
  QUOTA_MAX (Real) =         147
  QUOTA_MEDI (Real) =            116.3989
  PEND_MIN (Real) =              0.0000
  PEND_MAX (Real) =              5.1997
  PEND_MEDIA (Real) =              0.8801
  F_AREA (Real) =  295282.52260844968
  MULTIPOLYGON 
";i:1;N;i:2;N;}i:2;i:2049;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4878;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Text files and tables";i:1;i:3;i:2;i:4878;}i:2;i:4878;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4878;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4878;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"Input data for biomass estimation:  vegetation cover, forest vegetation type, slope, elevation etc";}i:2;i:4910;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5008;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5010;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"METHOD";i:1;i:2;i:2;i:5010;}i:2;i:5010;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:5010;}i:51;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:5028;}i:52;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5028;}i:53;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5028;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" Rasterization shp and spatial criteria in ";}i:2;i:5032;}i:55;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5075;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"ectar";}i:2;i:5077;}i:57;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5082;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:" unity measure (pixel = 100 * 100 meters);";}i:2;i:5084;}i:59;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5126;}i:60;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5126;}i:61;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5126;}i:62;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5126;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" Application of ";}i:2;i:5130;}i:64;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5146;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"fuzzy logic";}i:2;i:5148;}i:66;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5159;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" method;";}i:2;i:5161;}i:68;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5169;}i:69;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5169;}i:70;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5169;}i:71;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5169;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:" replacement of the spatial information criteria with generated weighted coefficient (vegetation cover, forest vegetation type, slope, elevation etc);";}i:2;i:5173;}i:73;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5323;}i:74;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5323;}i:75;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5323;}i:76;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5323;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:" Union and subsequent query of the information for each raster pixel:";}i:2;i:5327;}i:78;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5396;}i:79;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5396;}i:80;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:5396;}i:81;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:5397;}i:82;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:5397;}i:83;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:5397;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" Aj = ∑Xij  [ƒ(Jaccess) + ƒ(Jpend) + ƒ(Jcop) + ƒ(J3liv) + ƒ(Jvig) 5־¹]  ×  Wj ";}i:2;i:5405;}i:85;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5493;}i:86;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:5495;}i:87;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:5495;}i:88;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:5495;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5495;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"Where:";}i:2;i:5496;}i:91;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5502;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"
Aj = Productivity;";}i:2;i:5504;}i:93;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5523;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"
Xij  = Unitary provvigion for forestry category, for ectar in twenty years;";}i:2;i:5525;}i:95;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5601;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"
ƒ(Jaccess) = Fuzzy function for accessibility criteria;";}i:2;i:5603;}i:97;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5660;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"
ƒ(Jpend) = Fuzzy function for accessibility criteria;";}i:2;i:5662;}i:99;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5717;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"
ƒ(Jcop) = Fuzzy function for accessibility criteria;";}i:2;i:5719;}i:101;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5773;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"
ƒ(J3liv) = Fuzzy function for accessibility criteria";}i:2;i:5775;}i:103;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5829;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"
ƒ(Jvig) = Fuzzy function for accessibility criteria;";}i:2;i:5831;}i:105;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5885;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"
Wj = Forestry area value.. ";}i:2;i:5887;}i:107;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:5915;}i:108;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5917;}i:109;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5922;}i:110;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DATA IMPORT";i:1;i:2;i:2;i:5922;}i:2;i:5922;}i:111;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:5922;}i:112;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:9186:"
#    1. Rasterization shp and spatial criteria in ectar unity measure (pixel = 100 * 100 meters);
#    2. Application of fuzzy logic method;
#    3. Replacement of the spatial information criteria with generated weighted coefficient (vegetation cover, forest vegetation type, slope, elevation etc);
#    4. Union and subsequent query of the information for each raster pixel:


##
# Open Qgis and create a new location:  Basilicata, mapset: biomass using italian extent and
# projection as follow
# name: Universe Traverse Marcator
# proj: utm
# datum: wgs84
# ellps: wgs84
# zone: 33
# no_defets: definied
# EPGS: 32633

#  start grass in the new working directory
grass -text ~/ost4sem/grassdb/basilicata/biomass/

# import Pignola raster file
r.in.gdal   -o input=~/ost4sem/project/input/raster/Pantano.tif output=Pantano_raster
# -o override projection,  -e = extent to the new shp file extent

# import forest cover shp file
v.in.ogr   -o -e dsn=~/ost4sem/project/input/shp/CFR_BASILICATA_ALDO_VERIFICATO_INTERSECT_AREA.shp output=bas_forest
# -o override projection,  -e = extent to the new shp file extent

# WARNING: 518 areas represent more (overlapping) features, because polygons
#          overlap in input layer(s). Such areas are linked to more than 1
#          row in attribute table. The number of features for those areas is
#          stored as category in layer 2
# 14178 input polygons
# Total area: 4.031687e+09 (17773 areas)
# Overlapping area: 5.491385e+05 (518 areas)
# Area without category: 4.781430e+08 (4133 areas)

# # select, in shp file, study area from comune = Pignola
# g.region bas_forest
# 
# # select, in shp file, study area from coordinate projection, WGS 84 - UTM N 33
# g.region n=5322500 s=401000 w=300700 e=889700
# 
# # select study area from multiple comune or other parameter
# v.extract input=bas_forest output=pantano_forest    where="(NOMECOMUNE = 'PIGNOLA') or (NOMECOMUNE = 'TITO') or (NOMECOMUNE = 'ABRIOLA') or (NOMECOMUNE = 'SASSO DI CASTALDA') or (NOMECOMUNE = 'PICERNO') or (NOMECOMUNE = 'SATRIANO DI LUCANIA') or (NOMECOMUNE = 'CALVELLO') or (NOMECOMUNE = 'POTENZA')" new=-1 --overwrite ; d.mon start=x1 ; d.vect pantano_forest

# select study area from buffer area (used method)
    ## create a new empty vector map that contain a point of selected coordinates, and a circle of 15000 meters ray 
    v.edit tool=create map=biomass_plant

    ## create a point, from coordinate projection, that will represent the centre of a circle of 15000 meters ray 
    echo "P 1 1
     563280 4493294
     1 1" | v.edit -n tool=add map=biomass_plant

    ## generate a buffer area
    v.buffer input=biomass_plant output=circles type=point buffer=15000
 
    ## Selects features from vector map (A) by features from other vector map in the buffer circle (B). 
    v.select ainput=bas_forest binput=circles output=baslimit operator=overlap

# create folder: reclass_table
mkdir /home/user/ost4sem/project/input/reclass_table

# Rasterization shp and spatial criteria in unity measure (pixel = 5 * 5 meters)
# change resolution in 5 meters
g.region res=5 vect=baslimit

# 1. convert a unique baslimit.shp file, with multiple informations, in n. 5 raster file of 5 meters side with unique parameter information considered more relevant to the use of forest stands  
# 2. Replacement of the spatial information criteria with fuzzy logic weighted coefficient;

######
# Aj = Productivity in mc/ectar for vegetation cover type
v.to.rast input=baslimit output=prim_liv use=attr col=PRIM_LIV  --overwrite

echo "101 thru 104 = 265 faggio" > /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "105 thru 111 = 427 rimboschimenti misti" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "112 thru 114 = 645 castagno" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "115 thru 123 = 260 querceti" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "124 thru 126 = 0 arbusteti" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "127 thru 135 = 200 pini mediterranei" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "136 thru 140 = 500 igrofile" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "141 thru 144 = 200 rimboschimenti" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt
echo "145 thru 146 = 0 temporaneamente priva" >> /home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt

r.reclass input=prim_liv output=prim_liv_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_prim_liv.txt --overwrite 

# convert from integer to double value
r.mapcalc prim_liv_r2 = prim_liv_r*0.00100000


######
# ƒ(Jaccess) = Fuzzy function for accessibility criteria;
v.to.rast input=baslimit output=access use=attr column=ACCESS  --overwrite

echo "401 = 10 buona" > /home/user/ost4sem/project/input/reclass_table/reclass_access.txt
echo "402 = 7 scarsa" >> /home/user/ost4sem/project/input/reclass_table/reclass_access.txt
echo "403 = 4 insufficiente" >> /home/user/ost4sem/project/input/reclass_table/reclass_access.txt

r.reclass input=access output=access_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_access.txt  --overwrite 

# convert from integer to double value
r.mapcalc access_r2 = access_r*0.10000


######
# ƒ(Jpend) = Fuzzy function for slope criteria;
v.to.rast input=baslimit output=pend_media use=attr column=PEND_MEDIA  --overwrite

echo "1 thru 18 = 10 buona" > /home/user/ost4sem/project/input/reclass_table/reclass_pend_media.txt --overwrite
echo "19 thru 24 = 7 scarsa" >> /home/user/ost4sem/project/input/reclass_table/reclass_pend_media.txt --overwrite
echo "25 thru 31 = 4 scarsa" >> /home/user/ost4sem/project/input/reclass_table/reclass_pend_media.txt --overwrite
echo "32 thru 100 = 0 Insufficiente" >> /home/user/ost4sem/project/input/reclass_table/reclass_pend_media.txt --overwrite

r.reclass input=pend_media output=pend_media_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_pend_media.txt --overwrite

# convert from integer to double value
r.mapcalc pend_media_r2 = pend_media_r*0.100000


######
# ƒ(J3liv) = Fuzzy function for utilisation type criteria
v.to.rast input=baslimit output=terz_liv use=attr col=TERZ_LIV  --overwrite

echo "301 thru 302 = 10 ceduo" > /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt
echo "303 thru 306 = 20 ceduo coniferato" >> /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt
echo "308 thru 309 = 10 popolamenti transitori" >> /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt
echo "310 thru 311 = 4 novelleto e perticaia" >> /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt
echo "312 thru 313 = 8 fustaia giovane e matura" >> /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt
echo "315 thru 320 = 12 fustaia disetaneiforme" >> /home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt

r.reclass input=terz_liv output=terz_liv_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_terz_liv.txt --overwrite

# convert from integer to double value
r.mapcalc terz_liv_r2 = terz_liv_r*0.100000


######
# ƒ(Jvig) = Fuzzy function for fertility criteria;
v.to.rast input=baslimit output=vigore use=attr col=VIGORE  --overwrite

echo "603 = 10 alto" > /home/user/ost4sem/project/input/reclass_table/reclass_vigore.txt
echo "602 = 7 medio" >> /home/user/ost4sem/project/input/reclass_table/reclass_vigore.txt
echo "601 = 4 basso" >> /home/user/ost4sem/project/input/reclass_table/reclass_vigore.txt

r.reclass input=vigore output=vigore_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_vigore.txt --overwrite 

# convert from integer to double value
r.mapcalc vigore_r2 = vigore_r*0.100000



# ƒ(Jquot) = Fuzzy function for elevation criteria;
v.to.rast input=baslimit output=quota_medi use=attr col=QUOTA_MEDI  --overwrite

echo "0 thru 1400 = 1 buona" > /home/user/ost4sem/project/input/reclass_table/reclass_quota_medi.txt --overwrite
echo "1400 thru 2000 = 0 nulla" >> /home/user/ost4sem/project/input/reclass_table/reclass_quota_medi.txt --overwrite

r.reclass input=quota_medi output=quota_medi_r rules=/home/user/ost4sem/project/input/reclass_table/reclass_quota_medi.txt --overwrite 

# overlope of the various informative stands obtained

          # Aj = ∑Xij [ƒ(Jaccess) + ƒ(Jpend) + ƒ(Jvig) + ƒ(J3liv) + ƒ(Jvig) 5־¹]

                  # where:
                  # Aj = Productivity; 
                  # Xij = Unitary provvigion for forestry category, for ectar in twenty years;
                  # ƒ(Jaccess) = Fuzzy function for accessibility criteria;
                  # ƒ(Jpend) = Fuzzy function for slope criteria;
                  # ƒ(J3liv) = Fuzzy function for accessibility criteria
                  # ƒ(Jvig) = Fuzzy function for vigore criteria;
                  # ƒ(Jquot) = Fuzzy function for elevation criteria;
                  # Wj = Forestry area value..

r.mapcalc produttivita="prim_liv_r2*((access_r2+pend_media_r2+terz_liv_r2+vigore_r2+quota_medi_r)/5)"
\\

";i:1;s:4:"bash";i:2;N;}i:2;i:5951;}i:113;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:15152;}i:114;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"RESULTS and DISCUSSION";i:1;i:2;i:2;i:15152;}i:2;i:15152;}i:115;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:15152;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:15152;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:503:"The multicriteria analysis method presented allowed, through the use of GIS Open Source and the utilise of ponderized coefficients alongside the characters considered most accidents on forest utilization, have developed a methodology for the characterization of land for the purpose of ecological and territorial planning. All this through the process of a substantial body of data recovered in the field, through their inclusion in overlapping layers rightly allowed analysis of the values per hectare.";}i:2;i:15189;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:15692;}i:119;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:15692;}i:120;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:22:":wiki:produttivita.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:15694;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:15725;}i:122;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:15726;}i:123;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:15728;}i:124;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:15728;}i:125;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:25:":wiki:unibas108biomas.png";i:1;s:0:"";i:2;N;i:3;s:3:"300";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:15730;}i:126;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:32:":wiki:unibas108biomas_legend.png";i:1;s:0:"";i:2;N;i:3;s:3:"100";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:15764;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:15805;}i:128;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:15807;}i:129;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"BIBLIOGRAPHY";i:1;i:2;i:2;i:15807;}i:2;i:15807;}i:130;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:15807;}i:131;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:15831;}i:132;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:15831;}i:133;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:15831;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:15835;}i:135;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:61:"http://ecology.msu.montana.edu/labdsv/R/labs/lab11/lab11.html";i:1;s:44:"Fuzzy classification from Montana University";}i:2;i:15836;}i:136;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:15946;}i:137;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:15946;}i:138;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:15946;}i:139;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:15947;}i:140;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:15947;}i:141;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:15947;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:15951;}i:143;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:64:"http://wiki.gfoss.it/index.php/Creazione_del_DTM_con_GRASS_6.0.2";i:1;N;}i:2;i:15952;}i:144;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:16020;}i:145;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:16020;}i:146;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:16020;}i:147;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:16021;}i:148;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:16021;}i:149;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:16021;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:16025;}i:151;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:76:"http://www.ing.unitn.it/~grass/docs/tutorial_62/htdocs/comandi/r.mapcalc.htm";i:1;N;}i:2;i:16026;}i:152;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:16106;}i:153;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:16106;}i:154;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:16106;}i:155;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:16110;}i:156;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:16110;}}