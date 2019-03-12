a:330:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Nutrient losses";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:32;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"
Script done by Toke Panduro, KU, tepp@life.ku.dk, Maria Konrad, AU, mthk@dmu.dk, Line Block Hansen, AU, lbc@dmu.dk
";}i:2;i:34;}i:6;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:150;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:152;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:153;}i:9;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:153;}i:10;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"INTRODUCTION";i:1;i:2;i:2;i:153;}i:2;i:153;}i:11;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:153;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:153;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:330:"Nutrient losses to the water environment is a major problem in many European and non-European countries. Excessive losses from agricultural areas enhance eutrophication processes with loss of biodiversity and groundwater contamination as a consequence. This again mean decreased economic values of fishery and recreational value. ";}i:2;i:178;}i:14;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:508;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:510;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:515;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"General framework of this analysis";i:1;i:3;i:2;i:515;}i:2;i:515;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:515;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:515;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:413:"In this project we have two data files, an excel file containing information about nutrient losses from agricultural areas and a shape file with the same areas. The purpose of the project is to surf around getting to know a bit more about the different programs, GRASS, QGIS, R and the BASH language. We are going to explore our data, reading them into GRASS and R and carry out some simple statistical exercises.";}i:2;i:560;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:6:"     
";i:1;i:5;i:2;i:973;}i:2;i:5;i:3;s:6:"     
";}i:2;i:973;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:979;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:980;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:980;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Project objectives";i:1;i:3;i:2;i:980;}i:2;i:980;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:980;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:980;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:116:"To load data into GRASS and R. Carry out preliminary analysis of the data and plot different results in QGIS and R.
";}i:2;i:1009;}i:29;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1125;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1127;}i:31;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1128;}i:32;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1128;}i:33;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"METADATA";i:1;i:2;i:2;i:1128;}i:2;i:1128;}i:34;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1128;}i:35;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1150;}i:36;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"Excel file";i:1;i:3;i:2;i:1150;}i:2;i:1150;}i:37;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1150;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1150;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:286:"We have an excel file containing information about nutrient losses, retention and application of nitrogen, application of fertilizer and manure, yield type and other variables for 10,682 smaller agricultural areas. These areas are aggregated into 25 catchment areas around Odense Fjord.";}i:2;i:1171;}i:40;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:1457;}i:2;i:5;i:3;s:3:"  
";}i:2;i:1457;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1460;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1461;}i:43;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1461;}i:44;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Vector file";i:1;i:3;i:2;i:1461;}i:2;i:1461;}i:45;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1461;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1461;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"We have two vector files in shape format. One containing the 25 catchment areas (polygons) and one with the 10,682 smaller agricultural areas (points)";}i:2;i:1483;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1633;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1633;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Vectorfile 1: 
Layer name: 25opl";}i:2;i:1635;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1667;}i:52;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:127:"info
Geometry: Polygon
Feature Count: 25
Extent: (568411.591663, 6106805.020500) - (604461.949080, 6159975.773157)
Projection [";}i:2;i:3;i:3;s:127:"info
Geometry: Polygon
Feature Count: 25
Extent: (568411.591663, 6106805.020500) - (604461.949080, 6159975.773157)
Projection [";}i:2;i:1668;}i:53;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1795;}i:54;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:4:"ETRS";}i:2;i:3;i:3;s:4:"ETRS";}i:2;i:1796;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1800;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"1989";}i:2;i:1801;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1805;}i:58;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"UTM";}i:2;i:3;i:3;s:3:"UTM";}i:2;i:1806;}i:59;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1809;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Zone_32N";}i:2;i:1810;}i:61;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1818;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:",
UNIT[";}i:2;i:1819;}i:63;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1826;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Meter";}i:2;i:1827;}i:65;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1832;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:",1.0]]";}i:2;i:1833;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1839;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1839;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:158:"Vectorfile 2:
Layer name: Markblok
Geometry: Point
Feature Count: 10682
Extent: (568654.170939, 6106822.772875) - (604447.698678, 6159673.938541)
Projection [";}i:2;i:1841;}i:70;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1999;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"ETRS";}i:2;i:2000;}i:72;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:2004;}i:73;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:4:"1989";}i:2;i:3;i:3;s:4:"1989";}i:2;i:2005;}i:74;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:2009;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"UTM";}i:2;i:2010;}i:76;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:2013;}i:77;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:4:"Zone";}i:2;i:3;i:3;s:4:"Zone";}i:2;i:2014;}i:78;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:2018;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"32N";}i:2;i:2019;}i:80;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2022;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:",
UNIT[";}i:2;i:2023;}i:82;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2030;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"Meter";}i:2;i:2031;}i:84;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2036;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:",1.0]]";}i:2;i:2037;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2043;}i:87;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:414:"
Finding info about the files: use ogrinfo
cd    ~/ost4sem/project/unidk2010/nutrients/input/
ogrinfo -al   ~/ost4sem/project/unidk2010/nutrients/input/25opl_info.shp | head -28
ogrinfo -al   ~/ost4sem/project/unidk2010/nutrients/input/Markblok.shp | head -28

Fancy loop for calling projection for all files 
for file in *.shp ; do ogrinfo -al $file    | grep PROJCS  ; done #-al list all features in all layers

";i:1;s:4:"bash";i:2;N;}i:2;i:2050;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2050;}i:89;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2478;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:2480;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2481;}i:92;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2481;}i:93;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"METHOD";i:1;i:2;i:2;i:2481;}i:2;i:2481;}i:94;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2481;}i:95;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2501;}i:96;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DATA IMPORT";i:1;i:2;i:2;i:2501;}i:2;i:2501;}i:97;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2501;}i:98;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2501;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"We saved data from an USB stick to the desktop and loaded data from the desktop to input folder";}i:2;i:2525;}i:100;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2626;}i:101;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:224:"

INDIR=~/ost4sem/project/unidk2010/nutrients/input   # setting the input file directory which is necessary every time GRASS is opened 
OUTDIR=~/ost4sem/project/unidk2010/nutrients/output # setting the output file directory
";i:1;s:4:"bash";i:2;N;}i:2;i:2626;}i:102;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2626;}i:103;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"Change directory to the directory where the file to move is located, we saved ours in desktop directory";}i:2;i:2865;}i:104;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2974;}i:105;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:583:"
cd ~/Desktop 
mv basedata.csv ~/ost4sem/project/unidk2010/nutrients/input/basedata.csv 
mv 25opl_info.dbf $INDIR/25opl_info.dbf
mv 25opl_info.prj $INDIR/25opl_info.prj
mv 25opl_info.sbn $INDIR/25opl_info.sbn
mv 25opl_info.sbx $INDIR/25opl_info.sbx
mv 25opl_info.shp $INDIR/25opl_info.shp
mv 25opl_info.shx $INDIR/25opl_info.shx

mv Markblok_25opl.dbf $INDIR/Markblok.dbf
mv Markblok_25opl.prj $INDIR/Markblok.prj
mv Markblok_25opl.sbn $INDIR/Markblok.sbn
mv Markblok_25opl.sbx $INDIR/Markblok.sbx
mv Markblok_25opl.shp $INDIR/Markblok.shp
mv Markblok_25opl.shx $INDIR/Markblok.shx

";i:1;s:4:"bash";i:2;N;}i:2;i:2974;}i:106;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2974;}i:107;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3571;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:3573;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3574;}i:110;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3574;}i:111;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"DATA PROCESSING";i:1;i:2;i:2;i:3574;}i:2;i:3574;}i:112;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3574;}i:113;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3574;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:170:"We work a bit in GRASS, picking out a specific catchment area and calculate shortest distances between points and the catchment boarders. 
The result can be seen in QGIS ";}i:2;i:3602;}i:115;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3772;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3772;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Open grass in a preexisting mapset with a projection - in order to copy the excising projection";}i:2;i:3774;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3875;}i:119;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:156:"
grass -text ~/ost4sem/grassdb/europe/PERMANENT 
INDIR=~/ost4sem/project/unidk2010/nutrients/input    
OUTDIR=~/ost4sem/project/unidk2010/nutrients/output 
";i:1;s:4:"bash";i:2;N;}i:2;i:3875;}i:120;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3875;}i:121;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:165:"Create a new location in GRASS to save our file with the projection obtained later. GRASS is by default creating a file called PERMANENT inside the odense directory.";}i:2;i:4045;}i:122;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4216;}i:123;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
rm -r ~/ost4sem/grassdb/odense
";i:1;s:4:"bash";i:2;N;}i:2;i:4216;}i:124;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4216;}i:125;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Import the shape file 25opl";}i:2;i:4262;}i:126;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:4289;}i:127;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:78:"info.shp into the new grass location 
<code bash>
v.in.ogr -e dsn=$INDIR/25opl";}i:2;i:3;i:3;s:78:"info.shp into the new grass location 
<code bash>
v.in.ogr -e dsn=$INDIR/25opl";}i:2;i:4290;}i:128;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:4368;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"info.shp output=opl25 location=odense  ";}i:2;i:4369;}i:130;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:4408;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"overwrite 
</code>";}i:2;i:4410;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4428;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4428;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:148:"Exit GRASS to save the file in our working directory - doing this we have projected the projection from the excising data (in Permanent) to our file";}i:2;i:4430;}i:135;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4584;}i:136;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:251:"
exit 
rm -r ~/ost4sem/project/unidk2010/nutrients/grassdb/odense #Be sure that the directory not already exists!
mv ~/ost4sem/grassdb/odense ~/ost4sem/project/unidk2010/nutrients/grassdb/. #Move Odense to our GRASS database in the nutrient directory
";i:1;s:4:"bash";i:2;N;}i:2;i:4584;}i:137;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4584;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"Enter GRASS again to clean file. When importing shape files into GRASS they have to be cleaned due to errors created when imported";}i:2;i:4850;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4986;}i:140;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:183:"
grass -text ~/ost4sem/project/unidk2010/nutrients/grassdb/odense/PERMANENT
INDIR=~/ost4sem/project/unidk2010/nutrients/input    
OUTDIR=~/ost4sem/project/unidk2010/nutrients/output 
";i:1;s:4:"bash";i:2;N;}i:2;i:4986;}i:141;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4986;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"Create cleaned file and an error file.
It will only work if we remember the -e, making us able to extend the data, allowing errors when splitting and coupling the shape file";}i:2;i:5184;}i:143;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5357;}i:144;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:390:"
v.in.ogr -e dsn=$INDIR/25opl_info.shp output=opl25 --overwrite 
v.clean input=opl25 output=oplc25 tool=rmdupl,bpol error=myerroropl
g.remove vect=opl25 #Remove file not cleaned

v.in.ogr -e dsn=$INDIR/Markblok.shp output=Markblok1 --overwrite
v.clean input=Markblok1 output=Markblokc tool=rmdupl,bpol error=myerrormarkblok
g.remove vect=Markblok1 
qgis & #Open Quantum GIS to explore data
";i:1;s:4:"bash";i:2;N;}i:2;i:5364;}i:145;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5364;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Import csv file to dbf file in GRASS";}i:2;i:5769;}i:147;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5811;}i:148;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:63:"
db.in.ogr dsn=$INDIR/basedata.csv output=basedata key=BLOKNR

";i:1;s:4:"bash";i:2;N;}i:2;i:5811;}i:149;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5811;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:"Now the two files, Markblokc (the shapefile) and basedata (info file) is joined in QGIS 
using Vector/join attributes, and choose the relevant files and variables to join upon. The resulting file is a new shapefile named 
join";}i:2;i:5888;}i:151;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:6114;}i:152;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:8:"basedata";}i:2;i:3;i:3;s:8:"basedata";}i:2;i:6115;}i:153;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:6123;}i:154;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"markblokc.shp placed in: ost4sem/project/unidk2010/nutrients/output";}i:2;i:6124;}i:155;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6191;}i:156;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:399:"
Load the joined file into GRASS and clean it
OUTDIR=~/ost4sem/project/unidk2010/nutrients/output # setting the output file directory
v.in.ogr -e dsn=$OUTDIR/join_basedata_markblokc.shp output=join_basedata_markblokc --overwrite 
v.clean input=join_basedata_markblokc output=join_basedata_markblokc_c tool=rmdupl,bpol error=myerrorjoin
g.remove vect=join_basedata_markblokc #Remove file not cleaned
";i:1;s:4:"bash";i:2;N;}i:2;i:6198;}i:157;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6611;}i:158;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:0:"";i:1;i:6;i:2;i:6611;}i:2;i:6611;}i:159;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:6;}i:2;i:6611;}i:160;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:113:"
################################################################################################################";}i:2;i:6611;}i:161;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6724;}i:162;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:115:"We would like to find the catchment area with the greatest N loss, that is sum variable Nudv(kg) per catchment area";i:1;i:1;i:2;i:6724;}i:2;i:6724;}i:163;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:6724;}i:164;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:118:"
#We would like to find the catchment area with the greatest N loss, that is sum variable Nudv(kg) per catchment area ";}i:2;i:6724;}i:165;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6842;}i:166;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:137:"and find the a maximum value. Then we calculate the distance from markbloks in catchment area 25 to the other catchments using v.distance";i:1;i:1;i:2;i:6842;}i:2;i:6842;}i:167;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:6842;}i:168;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:139:"
#and find the a maximum value. Then we calculate the distance from markbloks in catchment area 25 to the other catchments using v.distance";}i:2;i:6842;}i:169;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6981;}i:170;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:0:"";i:1;i:6;i:2;i:6981;}i:2;i:6981;}i:171;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:6;}i:2;i:6981;}i:172;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:113:"
################################################################################################################";}i:2;i:6981;}i:173;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6981;}i:174;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"v.out.ascii convert the GRASS vector file into a GRASS txt file, use the join";}i:2;i:7096;}i:175;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7173;}i:176;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:8:"basedata";}i:2;i:3;i:3;s:8:"basedata";}i:2;i:7174;}i:177;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7182;}i:178;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"markblokc";}i:2;i:7183;}i:179;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7192;}i:180;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:78:"c file, 
seperating the colums with space (fs), only choose the two colums BNI";}i:2;i:3;i:3;s:78:"c file, 
seperating the colums with space (fs), only choose the two colums BNI";}i:2;i:7193;}i:181;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7271;}i:182;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"nr and Nudv";}i:2;i:7272;}i:183;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7283;}i:184;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"kg";}i:2;i:3;i:3;s:2:"kg";}i:2;i:7284;}i:185;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7286;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:" and save it (>) into  join";}i:2;i:7287;}i:187;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7314;}i:188;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:8:"basedata";}i:2;i:3;i:3;s:8:"basedata";}i:2;i:7315;}i:189;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7323;}i:190;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"markblokc_c_table.txt";}i:2;i:7324;}i:191;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7345;}i:192;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:127:"
v.out.ascii   input=join_basedata_markblokc_c  fs=" "   columns=BNI_nr,Nudv_kg_,Opl_NS  > join_basedata_markblokc_c_table.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:7352;}i:193;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7352;}i:194;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"Do a loop to caculate the sum of Nudv";}i:2;i:7493;}i:195;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7530;}i:196;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"kg";}i:2;i:3;i:3;s:2:"kg";}i:2;i:7531;}i:197;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7533;}i:198;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:" for every catchment area (BNI_nr) and print the file with three relevant columns. ";}i:2;i:7534;}i:199;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7617;}i:200;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:210:"
for (( clas=1 ; clas<=25 ; clas++)) ; do 
  awk  -v clas=$clas  '{ if ($4==clas) sum5=sum5+$5  }  END {print clas, sum5, $6 }' join_basedata_markblokc_c_table.txt   >>  join_basedata_markblokc_c_sum.txt 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:7624;}i:201;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7624;}i:202;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Find the maximum value and print the maximum value and the BNI";}i:2;i:7849;}i:203;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:7911;}i:204;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:29:"nr ($1 = colum 1) and the Opl";}i:2;i:3;i:3;s:29:"nr ($1 = colum 1) and the Opl";}i:2;i:7912;}i:205;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:7941;}i:206;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"NS (colum 3)";}i:2;i:7942;}i:207;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7960;}i:208;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:104:"
awk '{ if (NR>1) {if ($2>max) max= $2 }} END {print $1, $3, max }'  join_basedata_markblokc_c_sum.txt 
";i:1;s:4:"bash";i:2;N;}i:2;i:7960;}i:209;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7960;}i:210;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"We found that catchment area no. 9 have the greatest N loss ";}i:2;i:8078;}i:211;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8138;}i:212;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8138;}i:213;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"Now we are going to estimate the distance between markbloks and catchment areas";}i:2;i:8141;}i:214;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8220;}i:215;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8220;}i:216;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"First we clip the catchment area to focus on, catchment area 15 and the mark points from catchment area 9.";}i:2;i:8223;}i:217;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8335;}i:218;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
v.extract input=Markblokc output=Markblok9 where="BNI_nr=9"
v.extract input=oplc25 output=opl15 where="BNI_nr=15"
";i:1;s:4:"bash";i:2;N;}i:2;i:8335;}i:219;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8335;}i:220;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"Now we calculate the distances from the markbloks in catchment area 9 to the boundaries in catchment area 15";}i:2;i:8465;}i:221;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8579;}i:222;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:266:"
v.db.addcol map=Markblok9@PERMANENT layer=1 'columns=dist double precision'#Add a new column for use in the v.distance 
v.info -c Markblok9
v.distance from=Markblok9 to=opl15 from_type=point to_type=boundary output=distance_9_15 upload=dist column=dist --overwrite
";i:1;s:4:"bash";i:2;N;}i:2;i:8579;}i:223;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8579;}i:224;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"Now we do a loop to estimate distances from Markblok9 to all other catchment areas contained in oplc25";}i:2;i:8860;}i:225;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8968;}i:226;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:417:"
for (( clas=1 ; clas<=25 ; clas++)) ; do  # clas is the poligon ID
v.db.dropcol map=Markblok9  column=dist$clas
v.db.addcol map=Markblok9@PERMANENT layer=1 columns="dist$clas int"  #Add a new column for use in the v.distance
v.extract input=oplc25 output=opl$clas where="BNI_nr=$clas" --overwrite 
v.distance from=Markblok9 to=opl$clas from_type=point to_type=boundary upload=dist column=dist$clas --overwrite
done 
";i:1;s:4:"bash";i:2;N;}i:2;i:8968;}i:227;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8968;}i:228;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Jubiiiiiiiiiiiiiiiiiiiiiiiiiiiii it worked";}i:2;i:9400;}i:229;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:9442;}i:230;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"!!!!!!!!!!! ";}i:2;i:9445;}i:231;a:3:{i:0;s:6:"smiley";i:1;a:1:{i:0;s:3:":-P";}i:2;i:9457;}i:232;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9460;}i:233;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9460;}i:234;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:32:":wikidk:catchments_25_points.png";i:1;s:47:"Catchments areas and smaller agricultural areas";i:2;N;i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:9462;}i:235;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9550;}i:236;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:9554;}i:237;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Model parametrization";i:1;i:3;i:2;i:9554;}i:2;i:9554;}i:238;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:9554;}i:239;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9554;}i:240;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:139:"Now we are changing to R, load data into R, make some regressions and plot different results.
We start with making a new directory in Bash ";}i:2;i:9586;}i:241;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9731;}i:242;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:154:"
mkdir ~/ost4sem/project/unidk2010/nutrients/R
mkdir ~/ost4sem/project/unidk2010/nutrients/R/output
OUTR="~/ost4sem/project/unidk2010/nutrients/R/output"
";i:1;s:4:"bash";i:2;N;}i:2;i:9731;}i:243;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9731;}i:244;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"Then we start up R";}i:2;i:9900;}i:245;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9924;}i:246;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3:"
R
";i:1;s:1:"R";i:2;N;}i:2;i:9924;}i:247;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9924;}i:248;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"Read data into R and change values from factor to numeric values, finally saving data in the R directory";}i:2;i:9939;}i:249;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10049;}i:250;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:134:"
markdata <- read.dbf("~/ost4sem/project/unidk2010/nutrients/grassdb/odense/PERMANENT/dbf/join_basedata_markblokc_c.dbf", as.is=TRUE)
";i:1;s:1:"R";i:2;N;}i:2;i:10049;}i:251;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10049;}i:252;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:163:"as.is=TRUE means that the function DO NOT convert characters to factors. This is important because characters can be converted to numeric numbers, factors can NOT ";}i:2;i:10194;}i:253;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10363;}i:254;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:711:"
markdata$GLRareal_N <- as.numeric(markdata$GLRareal)
markdata$Nudv_kg_N <- as.numeric(markdata$Nudv_kg_)
markdata$BNI_nr_N <- as.numeric(markdata$BNI_nr)
markdata$jb_N <- as.numeric(markdata$jb)
markdata$N_han_N <- as.numeric(markdata$N_han)
markdata$N_hus_N <- as.numeric(markdata$N_hus)
markdata$HaGrovf_N <- as.numeric(markdata$HaGrovf)
markdata$HaGraesVed_N <- as.numeric(markdata$HaGraesVed)
markdata$HaKornVaar_N <- as.numeric(markdata$HaKornVaar)
markdata$HaKornVin_N <- as.numeric(markdata$HaKornVin)
markdata$HaAndet_N <- as.numeric(markdata$HaAndet)
markdata$HaBrakSkov_N <- as.numeric(markdata$HaBrakSkov)

save(markdata, file="~/ost4sem/project/unidk2010/nutrients/R/markdata.Rdata")
str(markdata)
";i:1;s:1:"R";i:2;N;}i:2;i:10363;}i:255;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10363;}i:256;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"Linear regression";}i:2;i:11086;}i:257;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11109;}i:258;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:383:"
reg1 <- lm(markdata$Nudv_kg_N ~ markdata$GLRareal_N+markdata$jb_N+markdata$N_han_N+markdata$N_hus_N)
reg2 <- lm(markdata$Nudv_kg_N ~ markdata$GLRareal_N+markdata$N_han_N+markdata$N_hus_N)
.
.
.
reg8 <- lm(markdata$Nudv_kg_N ~ markdata$GLRareal_N+markdata$N_han_N+markdata$N_hus_N+markdata$HaGraesVed_N+markdata$HaKornVaar_N+markdata$HaBrakSkov_N+markdata$HaKornVin_N)
summary(reg8)
";i:1;s:1:"R";i:2;N;}i:2;i:11109;}i:259;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11109;}i:260;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Print residuals and save in dataset markdata as the variable residual";}i:2;i:11504;}i:261;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11579;}i:262;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
markdata$residual <- reg8$residual
str(markdata$residual)
";i:1;s:1:"R";i:2;N;}i:2;i:11579;}i:263;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11579;}i:264;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"Now we make some plots";}i:2;i:11650;}i:265;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:11672;}i:266;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:11675;}i:267;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" for fun ";}i:2;i:11678;}i:268;a:3:{i:0;s:6:"smiley";i:1;a:1:{i:0;s:3:":-)";}i:2;i:11687;}i:269;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11690;}i:270;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11690;}i:271;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:114:"We make a png-function which creates a directory OUTR where plots are stored, and close the directory with dev.off";}i:2;i:11692;}i:272;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11812;}i:273;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:385:"
par(mfrow=c(2,1))   #De to plots kommer i samme billede
qqnorm(markdata$residual,main="QQ plot") #Two plots in the same picture
hist(markdata$residual, freq=TRUE, main="Test for normal distribution",xlab="Residuals") #Plot residuals against the frequency
dev.copy(png,filename="~/ost4sem/project/unidk2010/nutrients/R/Residuals.png",width = 1500, height = 1000, bg="white")
dev.off()
";i:1;s:1:"R";i:2;N;}i:2;i:11812;}i:274;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11812;}i:275;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:24:":wikidk:residualplot.png";i:1;s:0:"";i:2;N;i:3;s:3:"500";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:12209;}i:276;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12242;}i:277;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12242;}i:278;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:226:"Now we make a loop: a regression for the 25 different catchment areas and save the estimate values in a 1:25 vector
The estimate value from the regression is called by '$coefficient', we see that by wrigting str(summary(reg8))";}i:2;i:12244;}i:279;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12476;}i:280;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:366:"
estim=c(1:25)
for (i in c(1:25)){
subtmp=subset(markdata,markdata$BNI_nr_N==i)
temp.lm <- lm (subtmp$Nudv_kg_N~subtmp$GLRareal_N+subtmp$N_han_N+subtmp$N_hus_N+subtmp$HaGraesVed_N+subtmp$HaKornVaar_N+subtmp$HaBrakSkov_N+subtmp$HaKornVin_N)   
estim[i]=temp.lm$coefficients[3] #coeff henviser til estimate væriden og 3 til variabel 3 der er manure og gemmer i es1
}
";i:1;s:1:"R";i:2;N;}i:2;i:12476;}i:281;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12476;}i:282;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"Now we make a matrice with three different variables, estimate, r squared and intercept for the 25 catchments";}i:2;i:12853;}i:283;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12968;}i:284;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:560:"
full.est=matrix(NA,nrow=25,ncol=3)
for (i in c(1:25)){
subtmp=subset(markdata,markdata$BNI_nr_N==i)
temp.lm <- lm (subtmp$Nudv_kg_N~subtmp$GLRareal_N+subtmp$N_han_N+subtmp$N_hus_N+subtmp$HaGraesVed_N+subtmp$HaKornVaar_N+subtmp$HaBrakSkov_N+subtmp$HaKornVin_N)   
full.est[i,1]=temp.lm$coefficients[3]
full.est[i,2]=summary(temp.lm)$r.squared
full.est[i,3]=temp.lm$coefficients[1]

}
colnames(full.est)=c("estimate","R squared","intercept")
write.table(full.est,file="~/ost4sem/project/unidk2010/nutrients/R/Matrix.csv",row.names=TRUE,col.names=TRUE,sep=" ")

";i:1;s:1:"R";i:2;N;}i:2;i:12968;}i:285;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12968;}i:286;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Doing some more fancy plots";}i:2;i:13540;}i:287;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:13567;}i:288;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"
We more libraries";}i:2;i:13570;}i:289;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13595;}i:290;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:55:"
library(sp)  
library(RColorBrewer)
library(classInt)
";i:1;s:1:"R";i:2;N;}i:2;i:13595;}i:291;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13595;}i:292;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:103:"Now we rename our data because the structure of data are going to be changed with the coordinate system";}i:2;i:13662;}i:293;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13771;}i:294;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:18:"
fields<-markdata
";i:1;s:1:"R";i:2;N;}i:2;i:13771;}i:295;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13771;}i:296;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Look up the 'coordinates' and define geographic units";}i:2;i:13801;}i:297;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13860;}i:298;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:86:"
summary(fields$xcoor)
summary(fields$ycoor)
coordinates(fields)<-c("xcoor", "ycoor")
";i:1;s:1:"R";i:2;N;}i:2;i:13860;}i:299;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13860;}i:300;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"Plot";}i:2;i:13958;}i:301;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:13962;}i:302;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:13965;}i:303;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:13972;}i:304;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:442:"
pal <- brewer.pal(10,"RdBu")
q10 <- classIntervals(fields$residual, n = 20, style="quantile")
q10Colours <- findColours(q10, pal)
plot(fields, axes=TRUE, col = q10Colours, pch =20)
title("residuals")
legend("topleft", fill = attr(q10Colours, "palette"), legend=names(attr(q10Colours, "table")), bty="n")
dev.copy(png,filename="~/ost4sem/project/unidk2010/nutrients/R/map_of_Residuals.png",width = 1500, height = 1000, bg="white")
dev.off()

";i:1;s:1:"R";i:2;N;}i:2;i:13972;}i:305;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:13972;}i:306;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:28:":wikidk:map_of_residuals.png";i:1;s:0:"";i:2;N;i:3;s:3:"500";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:14426;}i:307;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14463;}i:308;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14463;}i:309;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Creating and saving results from loop models ";}i:2;i:14466;}i:310;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14517;}i:311;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:398:"
par(mfrow=c(3,1))
plot(full.est[,1],main="Manure",xlab="Catchment areas", ylab="Parameter estimates")
plot(full.est[,2],main="R square",xlab="Catchment areas", ylab="R square")
plot(full.est[,3], main="Intercept",xlab="Catchment areas", ylab="Parameter estimates")
dev.copy(png,filename="~/ost4sem/project/unidk2010/nutrients/R/loop_values.png",width = 1500, height = 1000, bg="white")
dev.off()

";i:1;s:1:"R";i:2;N;}i:2;i:14517;}i:312;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:14517;}i:313;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:23:":wikidk:loop_values.png";i:1;s:0:"";i:2;N;i:3;s:3:"500";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:14926;}i:314;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:14958;}i:315;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:14960;}i:316;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:0:"";i:1;i:6;i:2;i:14960;}i:2;i:14960;}i:317;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:6;}i:2;i:14960;}i:318;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:69:"
####################################################################";}i:2;i:14960;}i:319;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:15029;}i:320;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Fun merge which didn't work";i:1;i:2;i:2;i:15029;}i:2;i:15029;}i:321;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:15029;}i:322;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:32:"
## Fun merge which didn't work ";}i:2;i:15029;}i:323;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:15061;}i:324;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:0:"";i:1;i:6;i:2;i:15061;}i:2;i:15061;}i:325;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:6;}i:2;i:15061;}i:326;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_headeratx";i:1;b:1;i:2;i:5;i:3;s:69:"
####################################################################";}i:2;i:15061;}i:327;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1026:"

# v.to.db -p mark option=coor > "\$INPUT"coordinates.txt
v.db.addcol map=mark layer=1 columns="xcoor double,ycoor double"
v.to.db  map=mark layer=1 option=coor column=xcoor,ycoor


R --no-save -q  << EOF

library(foreign)
mark<-read.dbf("~/ost4sem/project/unidk2010/nutrients/grassdb/odense/fjord/dbf/mark.dbf") # 29var
names(mark)=toupper(names(mark))
mark\$comm.id=mark\$BLOKNR
mark\$bloknr=NULL
mark\$comm.id=c(1:10682)

base<-read.dbf("~/ost4sem/project/unidk2010/nutrients/grassdb/odense/PERMANENT/dbf/basedata.dbf") # 38
names(base)=tolower(names(base))
base\$comm.id=base\$bloknr
base\$bloknr=NULL
base\$comm.id=as.numeric(base\$comm.id)

intable=merge(mark, base, by.mark = "comm.id", by.base = "comm.id") #64 var  not 67
write.table(intable,file="~/ost4sem/project/unidk2010/nutrients/input/intable_1.txt",sep="|",col.names=TRUE, row.name=FALSE)

EOF

### making a map from a text file #

cat ~/ost4sem/project/unidk2010/nutrients/input/intable_1.txt | v.in.ascii out=mypoints x=30 y=31 cat=1 skip=1 --overwrite 


";i:1;s:1:"R";i:2;N;}i:2;i:15137;}i:328;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:16173;}i:329;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:16173;}}