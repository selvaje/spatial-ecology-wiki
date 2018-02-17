a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pksetmask";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:38:" pksetmask - apply mask to raster file";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:72;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:86;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
   pksetmask -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:86;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:86;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:150;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:161;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:92:" Apply mask (flag invalid values) to raster file according to given mask (raster file)
     ";}i:2;i:161;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:161;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:259;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:272;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1233:"
   -i     --input                Input image (default: <empty string>)
   -m     --mask                 Mask image(s) (default: <empty string>)
   -o     --output               Output mask file (default: <empty string>)
   -ot    --otype                Data type for output image ({Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/CInt16/CInt32/CFloat32/CFloat64}). Empty string: inherit type from input image (default: <empty string>)
   -of    --oformat              Output image format (see also gdal_translate). Empty string: inherit from input image (default: <empty string>)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: <empty string>)
   -t     --invalid              Mask value(s) where image is invalid. Use one value for each mask, or multiple values for a single mask. (default: 1)
   -p     --operator             Operator: < = > !. Use operator for each invalid option (default: =)
   -f     --flag                 Flag value to put in image if not valid (0) (default: 0)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -v     --verbose              verbose (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:272;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1520;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:1520;}i:2;i:1520;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1520;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:983:"
pksetmask -i input.tif -m mask.tif -o output.tif -ot Byte -t 0 -f 255 # copy pixel values from input.tif to output.tif, applying mask.tif, setting all values to 255 where mask is 0.

pksetmask -i input.tif -m mask.tif -o output.tif -ot Byte -t 1 -f 255 --operator '!' # copy values from input.tif to output.tif, but set all values to 255 if mask is not 1

pksetmask -i input.tif -m mask1.tif -m mask2.tif -o output.tif -ot Byte -t 0 -f 255 # copy pixel values from input.tif to output.tif, applying two masks, setting all values to 255 where either mask is 0.

pksetmask -i input.tif -m mask.tif -o output.tif -ot Byte -t 0 -t 1 -f 255 -f 255 # copy pixel values from input.tif to output.tif, applying single masks, setting all values to 255 where mask is either 0 or 1.

pksetmask -i input.tif -m mask.tif -o output.tif -ot Byte -t 0 -t 1 -f 255 -f 255 # copy pixel values from input.tif to output.tif, applying single masks, setting all values to 255 where mask is either 0 or 1.
";i:1;s:4:"bash";i:2;N;}i:2;i:1549;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2545;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2545;}}