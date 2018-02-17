a:155:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Basic GDAL and OGR script";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:40;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:34:"Read and Manipulate image metadata";i:1;i:2;i:2;i:40;}i:2;i:40;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:40;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:40;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Exercise:";}i:2;i:88;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:97;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"
Script: open by kate ";}i:2;i:99;}i:10;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:82:"http://www.spatial-ecology.net/ost4sem/exercise/basic_adv_gdalogr/basic_gdalogr.sh";i:1;s:55:" ~/ost4sem/exercise/basic_adv_gdalogr/basic_gdalogr.sh ";}i:2;i:121;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:264;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
Directory: ~/ost4sem/exercise/basic";}i:2;i:266;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:302;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:304;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:307;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"gdalogr
";}i:2;i:309;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:317;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:319;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:325;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:63:"
gedit ~/ost4sem/exercise/basic_adv_gdalogr/basic_gdalogr.sh &
";i:1;s:4:"bash";i:2;N;}i:2;i:325;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:325;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"Change the directory, see the image input.tif with openev, run gdalinfo and return to the questions: ";}i:2;i:402;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:509;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:77:"
cd ~/ost4sem/exercise/basic_adv_gdalogr
openev input.tif
gdalinfo input.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:509;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:509;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"What is the pixel size?";}i:2;i:600;}i:27;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:623;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"
How do you get min and max pixel values?";}i:2;i:625;}i:29;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:666;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"
The image has no information on a projection. ";}i:2;i:668;}i:31;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:715;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"
From the pixel values and from the boundary I can understand that it is in lat-long degree (WGS84).";}i:2;i:717;}i:33;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:817;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"
Let's apply a projection using gdal_warp";}i:2;i:819;}i:35;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:860;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:862;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:253:"
gdal_translate -co COMPRESS=DEFLATE -co ZLEVEL=9 -a_srs EPSG:4326  input.tif input_proj.tif
# or you can also use gdalwarp
gdalwarp -co COMPRESS=DEFLATE -co ZLEVEL=9  -t_srs EPSG:4326  -s_srs EPSG:4326  input.tif input_proj.tif
gdalinfo input_proj.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:869;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:869;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Calculate minimum and maximum values for all the images: ";}i:2;i:1137;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1200;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:134:"
cd ~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica
for file in *.tif ; do 
gdalinfo  -mm  $file | grep "Computed Min/Max" 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:1200;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1200;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Exercise:";}i:2;i:1348;}i:44;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1357;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"
Use one of the gdal commands and try to clip all the images using a square box with lat &lon that you like.";}i:2;i:1359;}i:46;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1467;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1469;}i:48;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1470;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1472;}i:50;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:1472;}i:51;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1472;}i:52;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1472;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" Open gedit and save the the script with the extension .sh";}i:2;i:1476;}i:54;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1534;}i:55;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1534;}i:56;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1534;}i:57;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1534;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:" Create a working directory following this ";}i:2;i:1538;}i:59;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:18:"wiki:createdirbash";i:1;s:9:"procedure";}i:2;i:1581;}i:60;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1613;}i:61;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1613;}i:62;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1613;}i:63;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1613;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Copy the ~/ost4sem/exercise/basic";}i:2;i:1617;}i:65;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:1651;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:1653;}i:67;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:1656;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:"gdalogr/fagus_sylvatica/*.tif in the $INDIR";}i:2;i:1658;}i:69;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1701;}i:70;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1701;}i:71;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1701;}i:72;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1701;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:" Identify the gdal command going to the gdal internet site";}i:2;i:1705;}i:74;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1763;}i:75;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1763;}i:76;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1763;}i:77;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1763;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:" Identify the option of the command to make the clip.";}i:2;i:1767;}i:79;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1820;}i:80;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1820;}i:81;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1820;}i:82;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1820;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:" Identify the square box coordinates using openev.";}i:2;i:1824;}i:84;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1874;}i:85;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1874;}i:86;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1874;}i:87;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1874;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:" Do a test with one image. Open it by openev.";}i:2;i:1878;}i:89;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1923;}i:90;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1923;}i:91;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1923;}i:92;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1923;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" Create a loop for all the images.";}i:2;i:1927;}i:94;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1961;}i:95;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1961;}i:96;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:1961;}i:97;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1961;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:128:"Use all the previous examples stored in this wiki. All the commands have already been explained - you just need to combine them.";}i:2;i:1962;}i:99;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2090;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:189:"
Use the $OUTDIR $INDIR varibles to define the directories of the files.
Write comments and explanation of the commands.
Your script should be able to be run the script by sh namescript.sh
";}i:2;i:2092;}i:101;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2281;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2283;}i:103;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2284;}i:104;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2286;}i:105;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2288;}i:106;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Understand data type";i:1;i:2;i:2;i:2288;}i:2;i:2288;}i:107;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2288;}i:108;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:465:"
                      Ranges of GDAL data types        Image
GDAL data type	       minimum  	maximum        Size 
Byte  			     0  	    255        39M
UInt16			     0  	 65,535        78M
Int16, CInt16 	       -32,768  	 32,767        78M
UInt32			     0    4,294,967,295        155M  
Int32, CInt32 	-2,147,483,648    2,147,483,647        155M
Float32, CFloat32      -3.4E38           3.4E38        155M
Float64, CFloat64    -1.79E308         1.79E308        309M";}i:2;i:2321;}i:109;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2809;}i:110;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"From Image to text and from txt to image";i:1;i:2;i:2;i:2809;}i:2;i:2809;}i:111;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2809;}i:112;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:234:"
cd ~/ost4sem/exercise/basic_adv_gdalogr
gdal_translate -of  XYZ   input.tif  output.txt
awk '{if ($3>0.01 && $3<0.9) {print $1,$2,50 } else {print}}' output.txt > output_change.txt
gdal_translate output_change.txt output_change.tif 
";i:1;s:4:"bash";i:2;N;}i:2;i:2868;}i:113;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3117;}i:114;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:41:"The use of VRT to stack images and Tiling";i:1;i:2;i:2;i:3117;}i:2;i:3117;}i:115;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3117;}i:116;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:378:"gdalbuildvrt -overwrite -separate   stack.vrt   20?0_TSSP_IP-ENS-A2-SP20_43023435.tif
gdal_translate  -srcwin 0       0 1670 2015   stack.vrt     stack_UL.tif
gdal_translate  -srcwin 0    2015 1670 2015   stack.vrt     stack_UR.tif
gdal_translate  -srcwin 1670    0 1670 2015   stack.vrt     stack_LL.tif
gdal_translate  -srcwin 1670 2015 1670 2015   stack.vrt     stack_LR.tif
";}i:2;i:3171;}i:117;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3171;}i:118;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"Use a stack vrt to build up tailed VRT";}i:2;i:3563;}i:119;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3602;}i:120;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:86:"gdalbuildvrt -overwrite -te  4302000 3435000 5972000 5450000   stack_LL.vrt  stack.vrt";}i:2;i:3602;}i:121;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3602;}i:122;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Recompose the image ";}i:2;i:3693;}i:123;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3714;}i:124;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:123:"gdalbuildvrt -overwrite mosaic.vrt stack_UL.tif stack_UR.tif stack_LL.tif stack_LR.tif
gdal_translate mosaic.vrt mosaic.tif";}i:2;i:3714;}i:125;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3844;}i:126;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Merge Images";i:1;i:2;i:2;i:3844;}i:2;i:3844;}i:127;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3844;}i:128;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3844;}i:129;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"Example:";}i:2;i:3870;}i:130;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3878;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"
Merge different ASTER dem and change the projection.";}i:2;i:3880;}i:132;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3933;}i:133;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:495:"

# merge the tiles 
gdal_merge.py  -o ASTGTM_merge/ASTGTM_dem_wgs84.tif  */ASTGTM_*_dem.tif
# change the projection
gdalwarp -co "COMPRESS=LZW" -t_srs "+proj=utm +zone=36 +south +a=6378249.145 +b=6356514.870 +units=m +towgs84=-160,-6,-302" ASTGTM_merge/ASTGTM_dem_wgs84.tif ASTGTM_merge/tmp.tif
# compress the file 
gdal_translate -co "COMPRESS=LZW"   ASTGTM_merge/tmp.tif  ASTGTM_merge/ASTGTM_dem_tz36.tif 
# remove intermediate file
rm ASTGTM_merge/tmp.tif ASTGTM_merge/ASTGTM_dem_wgs84.tif

";i:1;s:4:"bash";i:2;N;}i:2;i:3940;}i:134;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3940;}i:135;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"open it by openev";}i:2;i:4449;}i:136;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4466;}i:137;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:40:" openev ASTGTM_merge/ASTGTM_dem_tz36.tif";}i:2;i:4466;}i:138;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4511;}i:139;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Vector manipulation with OGR";i:1;i:2;i:2;i:4511;}i:2;i:4511;}i:140;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4511;}i:141;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4553;}i:142;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"ogrinfo programme";i:1;i:5;i:2;i:4553;}i:2;i:4553;}i:143;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:4553;}i:144;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:148:"ogrinfo -al    poly_fr_10poly.sh
ogrinfo -al -geom=NO    poly_fr_10poly.shp

# select a field 

ogrinfo -al -geom=NO    poly_fr_10poly.shp | grep id";}i:2;i:4576;}i:145;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4739;}i:146;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Look at a different file";i:1;i:5;i:2;i:4739;}i:2;i:4739;}i:147;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:4739;}i:148;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:124:"
cd ~/ost4sem/exercise/KenyaGIS

ogrinfo -al County.shp
ogrinfo -al County.shp | head -30
ogrinfo -al County.shp | head -41
";i:1;s:4:"bash";i:2;N;}i:2;i:4776;}i:149;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4915;}i:150;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Process vector file with ogr2ogr and ogrinfo";i:1;i:5;i:2;i:4915;}i:2;i:4915;}i:151;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:4915;}i:152;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:477:"
INPUT=~/ost4sem/exercise/KenyaGIS

ogr2ogr  -f "GML" -s_srs EPSG:4326  -t_srs EPSG:3857 -select COUNTY  -where "COUNTY = 'Isiolo'"  /tmp/Isiolo.gml  $INPUT/County.shp

# Extract bounding box for different county and overall county in Kenya
ogrinfo -al County.shp | grep "Extent" | awk '{gsub(/\(/,"");gsub(/\)/,"");gsub(/,/,"");print $2" "$3" "$5" "$6} '
ogrinfo -al /tmp/Isiolo.gml | grep "Extent" | awk '{gsub(/\(/,"");gsub(/\)/,"");gsub(/,/,"");print $2" "$3" "$5" "$6} '

";i:1;s:4:"bash";i:2;N;}i:2;i:4972;}i:153;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5463;}i:154;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:5463;}}