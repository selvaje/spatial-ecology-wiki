a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"pksieve";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:23;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:27;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:23:" pksieve - sieve filter";}i:2;i:27;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:27;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:55;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:69;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:41:"

   pksieve -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:69;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:69;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:132;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:143;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:74:" Sieve filter input raster file (C++ wrapper around GDALSieveFilter)
     ";}i:2;i:143;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:143;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:223;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:236;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:687:"
   -i     --input                Input image file (default: <empty string>)
   -m     --mask                 Mask band indicating pixels to be interpolated (zero valued)  (default: <empty string>)
   -o     --output               Output image file (default: <empty string>)
   -b     --band                 the band to be used from input file (default: 0)
   -c     --connect              the connectedness: 4 directions or 8 directions (default: 8)
   -s     --size                 raster polygons with sizes smaller than this will be merged into their largest neighbour. No sieve is performed if size = 0 (default: 0)
   -v     --verbose              verbose mode if > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:236;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:938;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:938;}i:2;i:938;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:938;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:165:"
pksieve -i input.tif -c 8 -s 5 -o ouput.shp # merge all patches smaller than 5 pixels into bigger classes, using 8 connectivity (horizontal, vertical and diagonal)
";i:1;s:4:"bash";i:2;N;}i:2;i:966;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1145;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1145;}}