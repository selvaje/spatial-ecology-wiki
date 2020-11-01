a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pkgetmask";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:30:" pkgetmask - create mask image";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:64;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:78;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
   pkgetmask -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:78;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:78;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:142;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:153;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:61:" Create mask image based on values in input raster file
     ";}i:2;i:153;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:153;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:220;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:233;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1416:"
   -i     --input                Input image file (default: <empty string>)
   -b     --band                 band(s) used for mask (default: 0)
   -m     --min                  Values smaller than min threshold(s) are masked as invalid. Use one threshold for each band (default: 0)
   -M     --max                  Values greater than max threshold(s) are masked as invalid. Use one threshold for each band (default: 0)
   -p     --operator             Operator: [AND,OR]. (default: OR)
   -t     --tvalue               value(s) for valid pixels: between min and max (default: 1)
   -f     --fvalue               value(s) for invalid pixels: not between min and max (default: 0)
   -o     --output               Output mask file (default: <empty string>)
   -ot    --otype                Data type for output image ({Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/CInt16/CInt32/CFloat32/CFloat64}). Empty string: inherit type from input image (default: Byte)
   -of    --oformat              Output image format (see also gdal_translate). Empty string: inherit from input image (default: <empty string>)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -v     --verbose              verbose (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:233;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1664;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:1664;}i:2;i:1664;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1664;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:395:"
pkgetmask -i input.tif -o output.tif --min 0 -t 1 -f 0 # create mask, setting all negative values to 0 (rest to 1)

pkgetmask -i input.tif -o output.tif --min 0 --max 10 --min 0 --max 250 -b 0 -b 1 # create mask. Mask is set to 0 (default value for -f) if either band 0 is not between 0 and 10 OR (default operator) band 1 is not between 0 and 250. Else mask is set to 1 (default value for -t)
";i:1;s:4:"bash";i:2;N;}i:2;i:1692;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2101;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2101;}}