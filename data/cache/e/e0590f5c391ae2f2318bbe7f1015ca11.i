a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pkreclass";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:48:" pkreclass - replace pixel values in raster file";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:82;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:96;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
   pkreclass -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:96;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:96;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:160;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:171;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:92:" Reclassify pixels from class to reclass using command line options or ASCII code file
     ";}i:2;i:171;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:171;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:269;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:282;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1605:"
   -i     --input                Input image (default: <empty string>)
   -m     --mask                 Mask image(s) (default: <empty string>)
   -t     --invalid              Mask value(s) where image is invalid. Use one value for each mask, or multiple values for a single mask. (default: 1)
   -f     --flag                 Flag value to put in image if not valid (0) (default: 0)
   -code   --code                 Recode text file (2 colums: from to) (default: <empty string>)
   -c     --class                list of classes to reclass (in combination with reclass option) (default: <empty string>)
   -r     --reclass              list of recoded class(es) (in combination with class option) (default: <empty string>)
   -ct    --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -o     --output               Output mask file (default: <empty string>)
   -ot    --otype                Data type for output image ({Byte/Int16/UInt16/UInt32/Int32/Float32/Float64/CInt16/CInt32/CFloat32/CFloat64}). Empty string: inherit type from input image (default: <empty string>)
   -b     --band                 band index to replace (other bands are copied to output) (default: 0)
   -n     --fname                field name of the shape file to be replaced (default: label)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -d     --description          Set image description (default: <empty string>)
   -v     --verbose              verbose (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:282;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1902;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:1902;}i:2;i:1902;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1902;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:285:"
pkreclass -i input1.tif -o output.tif -c 1 -r 0 -c 2 -r 0 # replace pixel values 1 and 2 with value 0

pkreclass -i vector.shp -o output.shp -c FROM -r TO -n INFIELD # replace FROM with TO in field INFIELD (of type string) in vector file vector.shp and write to new vector output.shp
";i:1;s:4:"bash";i:2;N;}i:2;i:1930;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2229;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Advanced examples";i:1;i:2;i:2;i:2229;}i:2;i:2229;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2229;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:409:"
for((i=0;i<256;++i));do if(($i<100));then echo "$i 1";else echo "$i 0";fi;done > code.txt; pkreclass -i input1.tif -o output.tif --code code.txt; # replace all values smaller than 100 with 1, all other values with 0

pkreclass -i input1.tif -o output.tif $(for((i=0;i<256;++i));do if(($i<100));then echo -n " -c $i " " -r 1";else echo " -c $i " " -r 0";fi;done) # same as previous but without temporary file
";i:1;s:4:"bash";i:2;N;}i:2;i:2264;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2686;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2686;}}