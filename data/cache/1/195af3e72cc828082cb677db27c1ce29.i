a:22:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:45:"GRASS70 Create Location using ancillary layer";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Create a location in a new grass database using a referenced dataset.";}i:2;i:63;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:132;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:134;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:135;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"
Create a new GrassDataBase and copy the input.tif ";}i:2;i:137;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:194;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:139:"
rm -rf ~/ost4sem/grassdbnew/
mkdir ~/ost4sem/grassdbnew/
cp ~/ost4sem/exercise/basic_adv_gdalogr/input.tif ~/ost4sem/grassdbnew/input.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:194;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:194;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Define a projection to the input.tif";}i:2;i:348;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:384;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:98:"
cd ~/ost4sem/grassdbnew/
gdalwarp   -t_srs EPSG:4326  -s_srs EPSG:4326  input.tif input_proj.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:391;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:391;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"Run the grass70 command  which create the newlocation based on the input_proj.tif ";}i:2;i:505;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:587;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:110:"
rm -rf ~/ost4sem/grassdbnew/newlocation
grass70 -text -c -c input_proj.tif newlocation ~/ost4sem/grassdbnew 
";i:1;s:4:"bash";i:2;N;}i:2;i:594;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:51:"
r.in.gdal input=input_proj.tif  output=input_proj
";i:1;s:4:"bash";i:2;N;}i:2;i:725;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:791;}i:21;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:791;}}