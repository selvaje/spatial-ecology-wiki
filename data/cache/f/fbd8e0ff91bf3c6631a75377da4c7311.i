a:33:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:43:"GRASS Create Location using ancillary layer";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:61;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:44:"Execute GRASS commands while beeing in GRASS";i:1;i:2;i:2;i:61;}i:2;i:61;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:61;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:61;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Create a location in a new grass database using a referenced dataset.";}i:2;i:121;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:190;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:192;}i:10;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:193;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"
Create a new GrassDataBase and copy the input.tif ";}i:2;i:195;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:252;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
rm -rf ~/ost4sem/grassdbnew/
mkdir ~/ost4sem/grassdbnew/
cp ~/ost4sem/exercise/basic_adv_gdalogr/input.tif ~/ost4sem/grassdbnew/input.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:252;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:252;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Define a projection to the input.tif";}i:2;i:406;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:442;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:98:"
cd ~/ost4sem/grassdbnew/
gdalwarp   -t_srs EPSG:4326  -s_srs EPSG:4326  input.tif input_proj.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:449;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:449;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:"Run the grass74 command  which creates the newlocation based on the input_proj.tif ";}i:2;i:562;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:645;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:107:"
rm -rf ~/ost4sem/grassdbnew/newlocation
grass74 -text -c input_proj.tif newlocation ~/ost4sem/grassdbnew 
";i:1;s:4:"bash";i:2;N;}i:2;i:652;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
r.in.gdal input=input_proj.tif  output=input_proj
";i:1;s:4:"bash";i:2;N;}i:2;i:780;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:780;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"import the date";}i:2;i:846;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:861;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:97:"
for file in *.tif 
filename=$(basename $file .tif)
r.in.gdal input=$file.tif  output=$file
done
";i:1;s:4:"bash";i:2;N;}i:2;i:868;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:981;}i:28;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:55:"Execute GRASS commands from BASH without enter in GRASS";i:1;i:2;i:2;i:981;}i:2;i:981;}i:29;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:981;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:324:"
cd ~/ost4sem/grassdbnew/
rm -rf ~/ost4sem/grassdbnew/newlocation
grass74 -text -c input_proj.tif  -e ~/ost4sem/grassdbnew/newlocation 
grass74 ~/ost4sem/grassdbnew/newlocation/PERMANENT/ --exec r.external input=input_proj.tif  output=input_proj
grass74 ~/ost4sem/grassdbnew/newlocation/PERMANENT/ --exec r.info input_proj

";i:1;s:4:"bash";i:2;N;}i:2;i:1056;}i:31;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1394;}i:32;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1394;}}