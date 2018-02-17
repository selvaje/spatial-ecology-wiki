a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"pkfilter";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:24;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:28;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:30:" pkfilter - filter raster file";}i:2;i:28;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:28;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:63;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:77;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:41:"
   pkfilter -i input -o output [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:77;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:77;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:140;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:151;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:64:" Filter input raster file with user- or predefined filters
     ";}i:2;i:151;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:151;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:221;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:234;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1906:"
   -i     --input                input image file (default: <empty string>)
   -o     --output               Output image file (default: <empty string>)
   -c     --circular             circular disc kernel for dilation and erosion (default: false)
   -f     --filter               filter function (0: median, 1: variance, 2: min, 3: max, 4: sum, 5: mean, 6: minmax, 7: dilation, 8: erosion, 9: closing, 10: opening, 11: spatially homogeneous, 12: SobelX edge detection in X, 13: SobelY edge detection in Y, 14: SobelXY (not supported), 15: smooth, 16: density, 17: majority voting (only for classes), 18: forest aggregation (mixed), 19: smooth no data (mask) values), 20: threshold local filtering (default: 0)
   -dx    --dx                   filter kernel size in x, must be odd (example: 3). (default: 0)
   -dy    --dy                   filter kernel size in y, must be odd (example: 3).. Set dy=0 if 1-D filter must be used in band domain (default: 0)
   -co    --co                   options: NAME=VALUE [-co COMPRESS=LZW] [-co INTERLEAVE=BAND] (default: INTERLEAVE=BAND)
   -class   --class                class value(s) to use for density, erosion, dilation, openening and closing, thresholding (default: 1)
   -t     --threshold            threshold value(s) to use for threshold filter (one for each class) (default: 0)
          --mask                 mask value(s)  (default: -1)
   -tap   --tap                  text file conttaining taps used for filtering (from ul to lr). Use dimX and dimY to specify tap dimensions in x and y. Leave empty for not using taps (default: <empty string>)
   -d     --down                 down sampling factor. Use value 1 for no downsampling) (default: 1)
          --ct                   color table (file with 5 columns: id R G B ALFA (0: transparent, 255: solid) (default: <empty string>)
   -v     --verbose              verbose mode if > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:234;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2155;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:2155;}i:2;i:2155;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2155;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:271:"
pkfilter -i input.tif -o filter.tif -dx 3 -dy 3 -class 255 -f 7 -c # filter input.tif with morphological dilation filter (-f 7). Use circular kernel of size 3x3. Consider only values of 255 for filtering operation. Typical usage: dilate cloud values with value 255 only
";i:1;s:4:"bash";i:2;N;}i:2;i:2183;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2468;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2468;}}