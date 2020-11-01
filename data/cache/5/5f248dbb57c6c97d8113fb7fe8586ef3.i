a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"pkcrop";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:40:" pkcrop - perform raster file operations";}i:2;i:26;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:71;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:85;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
   pkcrop -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:85;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:85;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:146;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:157;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:75:" Perform raster file operations such as crop, extract and stack bands
     ";}i:2;i:157;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:157;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:238;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:251;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2657:"
   -i     --input                Input image file(s). If input contains multiple images, a multi-band output is created (default: <empty string>)
   -o     --output               Output image file (default: <empty string>)
   -p     --projection           projection in EPSG format (leave blank to copy from input file, use EPSG:3035 to use European projection and to force to European grid (default: <empty string>)
   -e     --extent               get boundary from extent from polygons in vector file (default: <empty string>)
   -m     --mask                 mask values out of polygon in extent file to flag option (tip: for better performance, use gdal_rasterize -i -burn 0 -l extent extent.shp output (with output the result of pkcrop) (default: false)
   -ulx   --ulx                  Upper left x value bounding box (in geocoordinates if georef is true) (default: 0)
   -uly   --uly                  Upper left y value bounding box (in geocoordinates if georef is true) (default: 0)
   -lrx   --lrx                  Lower right x value bounding box (in geocoordinates if georef is true) (default: 0)
   -lry   --lry                  Lower right y value bounding box (in geocoordinates if georef is true) (default: 0)
   -b     --band                 band index to crop (-1: crop all bands) (default: -1)
   -s     --scale                output=scale*input+offset (default: 1)
   -off   --offset               output=scale*input+offset (default: 0)
   -ot    --otype                Data type for output image ({Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/CInt16/CInt32/CFloat32/CFloat64}). Empty string: inherit type from input image (default: <empty string>)
   -of    --oformat              Output image format (see also gdal_translate). Empty string: inherit from input image (default: <empty string>)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -dx    --dx                   Output resolution in x (in meter) (0.0: keep original resolution) (default: 0)
   -dy    --dy                   Output resolution in y (in meter) (0.0: keep original resolution) (default: 0)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -f     --flag                 Flag value to put in image if out of bounds. (default: 0)
   -r     --resampling-method    Resampling method (near: nearest neighbour, bilinear: bi-linear interpolation). (default: near)
   -d     --description          Set image description (default: <empty string>)
   -v     --verbose              verbose (default: false)
";i:1;s:4:"bash";i:2;N;}i:2;i:251;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2922;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:2;i:2;i:2922;}i:2;i:2922;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2922;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:539:"
pkcrop -i input.tif -ulx 100 -uly 1000 -lrx 600 -lry 100 -o output.tif # crop image.tif to the given bounding box

pkcrop -i input.tif -e polygon.shp -o output.tif # crop image.tif to the envelop of the given polygon

pkcrop -i input.tif -b 3 -b 2 -b 1 # extract bands 3,2,1 (starting from 0) in that order from multi-band raster image input.tif

pkcrop -i fimage.tif -s 100 -ot Byte -o bimage.tif -ct colortable.txt # scale raster floating point image fimage.tif with factor 100 and write as single byte image with the given colourtable
";i:1;s:4:"bash";i:2;N;}i:2;i:2949;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3502;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Advanced examples";i:1;i:2;i:2;i:3502;}i:2;i:3502;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3502;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:138:"
pkcrop -i large.tif $(pkinfo -i small.tif -bb) -o output.tif # crop raster image large.tif to the bounding box of raster image small.tif
";i:1;s:4:"bash";i:2;N;}i:2;i:3537;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3688;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3688;}}