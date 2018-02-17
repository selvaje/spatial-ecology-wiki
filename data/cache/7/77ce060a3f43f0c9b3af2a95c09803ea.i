a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pkextract";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:44:" pkextract - extract values from raster file";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:78;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:92;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
   pkextract -i input -s sample [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:92;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:92;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:156;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:167;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:77:" Extract pixel values from raster file based on raster or vector sample
     ";}i:2;i:167;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:167;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:250;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:263;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3090:"
   -i     --image                Input image file (default: <empty string>)
   -s     --sample               Input sample file (shape) or class file (e.g. Corine CLC) if class option is set (default: <empty string>)
   -m     --mask                 Mask image file (default: <empty string>)
   -f     --flag                 Mask value where image is invalid. If a single mask is used, more flags can be set. If more masks are used, use one value for each mask. (default: 1)
   -c     --class                Class(es) to extract from input sample image. Use -1 to process every class in sample image, or 0 to extract all non-flagged pixels from sample file (default: 0)
   -o     --output               Output sample file (image file) (default: <empty string>)
   -k     --keep                 Keep original features in output vector file (default: false)
   -bu    --bu                   Buffer output shape file (default: <empty string>)
   -g     --geo                  geo coordinates (default: 1)
   -down  --down                 down sampling factor. Can be used to create grid points (default: 1)
   -t     --threshold            threshold for selecting samples (randomly). Provide probability in percentage (>0) or absolute (<0). Use multiple threshold values (e.g. -t 80 -t 60) is more classes are to be extracted with random selection. Use value 100 to select all pixels for selected class(es) (default: 100)
   -min   --min                  minimum number of samples to select (0) (default: 0)
   -bo    --boundary             boundary for selecting the sample (default: 1)
   -rb    --rbox                 rectangular boundary box (total width in m) to draw around the selected pixel. Can not combined with class option. Use multiple rbox options for multiple boundary boxes. Use value 0 for no box) (default: 0)
   -cbox  --cbox                 circular boundary (diameter in m) to draw around the selected pixel. Can not combined with class option. Use multiple cbox options for multiple boundary boxes. Use value 0 for no box) (default: 0)
   -circ  --circular             circular disc kernel boundary (default: 0)
   -ft    --ftype                Field type (only Real or Integer) (default: Real)
   -lt    --ltype                Label type: In16 or String (default: Integer)
   -bn    --bname                Field name of output shape file (default: B)
   -cn    --cname                name of the class label in the output vector file (default: label)
   -l     --line                 create OGRPolygon as geometry instead of points. Only if sample option is also of polygon type. Use 0 for OGRPoint (default: false)
   -b     --band                 band index to crop. Use -1 to use all bands) (default: -1)
   -r     --rule                 rule how to report image information per feature. 0: value at each point (or at centroid of the polygon if line is not set), 1: mean value (written to centroid of polygon if line is not set), 2: proportion classes, 3: custom, 4: minimum of polygon). (default: 0)
   -v     --verbose              verbose mode if > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:263;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3368;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:3368;}i:2;i:3368;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:3368;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:837:"
pkextract -i input.tif -s points.shp -o extracted.shp # extract all bands from input.tif to extracted.shp at pixel locations defined in points.shp.

pkextract -i input.tif -s polygons.shp -o extracted.shp -l -b 0 # extract band 0 from input.tif to extracted.shp at pixel locations covered by polygons.shp.

pkextract -i input.tif -s polygons.shp -o extracted.shp -l -r 1 -b 1 # extract band 1 from input.tif to extracted.shp at centroid of polygon.

pkextract -i input.tif -s sample.tif -o extracted.shp -t 10 -c 1 -c 2 -c 3 # extract all bands for 10 percent of the samples in sample.tif where sample.tif equals 1,2 or 3 (class values) to extracted.shp.

pkextract -i input.tif -s sample.tif -o extracted.shp -t -5000 -c 1 # extract all bands for a maximum of 5000 samples (if available) for each class in sample.tif to extracted.shp.
";i:1;s:4:"bash";i:2;N;}i:2;i:3396;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4246;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4246;}}