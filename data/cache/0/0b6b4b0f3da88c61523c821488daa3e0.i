a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"pkndvi";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:48:" pkndvi - calculate vegetation index raster file";}i:2;i:26;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:79;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:93;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
   pkndvi -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:93;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:93;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:154;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:165;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:84:" Calculate different vegetation indices, based on multi-band input raster file
     ";}i:2;i:165;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:165;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:255;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:268;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1830:"
   -i     --input                input image file (default: <empty string>)
   -o     --output               output image file containing ndvi (default: <empty string>)
   -b     --band                 Bands to be used for vegetation index (see rule option) (default: 0)
   -r     --rule                 Rule for index. [ndvi (b1-b0)/(b1+b0)|gvmi (b0+0.1)-(b1+0.02))/((b0+0.1)+(b1+0.02)))|vari (b1-b2)/(b1+b2-b0)|diff (b1-b0)|scale. (default: ndvi)
   -t     --invalid              Mask value where image is invalid. (default: 0)
   -f     --flag                 Flag value to put in image if not valid (0) (default: 0)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -d     --description          Set image description (default: <empty string>)
   -m     --minmax               minimum and maximum values for ndvi (limit all values smaller/larger to min/max (default: 0)
   -e     --eps                  epsilon, contraint division by zero (default: 0)
   -s     --scale                scale[0] is used for input, scale[1] is used for output: DN=scale[1]*ndvi+offset[1] (default: 1)
   -off   --offset               offset[0] is used for input, offset[1] is used for output (see also scale option (default: 0)
   -ot    --otype                Data type for output image ({Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/CInt16/CInt32/CFloat32/CFloat64}). Empty string: inherit type from input image (default: Byte)
   -of    --oformat              Output image format (see also gdal_translate). Empty string: inherit from input image (default: GTiff)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -v     --verbose              verbose mode if > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:268;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2113;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:2113;}i:2;i:2113;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2113;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:219:"
pkndvi -i input.tif -o ndvi.tif -b 0 -b 1 -ot Byte -s 1 -s 100 -m 0 -m 1 # create ndvi image, based on multi-band input.tif (RED=band 0, Near Infrared=band1). Limit ndvi values to [0,1], but scale output from [0,100].
";i:1;s:4:"bash";i:2;N;}i:2;i:2141;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2373;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2373;}}