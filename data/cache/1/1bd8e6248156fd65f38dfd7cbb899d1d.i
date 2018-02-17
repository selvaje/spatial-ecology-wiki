a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"pkcreatect";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:26;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:30;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:33:" pkcreatect - create colour table";}i:2;i:30;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:30;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:68;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:82;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:24:"
   pkcreatect [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:82;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:82;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:128;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:139;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:71:" Create, attach or remove a colour table to or from a raster file
     ";}i:2;i:139;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:139;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:216;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:229;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1040:"
   -i     --input                Input image file (default: <empty string>)
   -o     --output               Output image file (default: <empty string>)
   -l     --legend               Create legend as png file (default: <empty string>)
   -dim   --dim                  number of columns and rows in legend. (default: 100)
   -m     --min                  minimum value (default: 0)
   -M     --max                  maximum value (default: 100)
   -g     --grey                 grey scale (default: false)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -d     --description          Set image description (default: <empty string>)
   -of    --oformat              Output image format (see also gdal_translate). Empty string: inherit from input image (default: GTiff)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -v     --verbose              verbose (default: false)
";i:1;s:4:"bash";i:2;N;}i:2;i:229;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1284;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:1284;}i:2;i:1284;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1284;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
pkcreatect -i image.tif -o image_ct.tif -m 0 -M 50 # attach color table to image with values between 0 and 50

pkcreatect -i image.tif -o image_ct.tif -m 0 -M 100 -l legend.tif # attach grey scale "color" table to image with values between 0 and 100 and create a legend image (annotation needs to be drawn manually)

pkcreatect -i image.tif -o image_ct.tif -ct colourtable.txt # attach predefined color table to image
 
pkcreatect -i image.tif -o image_noct.tif -ct none # remove color table from image
";i:1;s:4:"bash";i:2;N;}i:2;i:1312;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1830;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1830;}}