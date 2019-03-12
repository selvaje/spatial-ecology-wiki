a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"pkinfo";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:42:" pkinfo - get information from raster file";}i:2;i:26;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:73;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:87;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:33:"
   pkinfo -i imagefile [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:87;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:87;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:142;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:153;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:77:" Get specific information from raster file similar to gdalinfo, option driven";}i:2;i:153;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:153;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:235;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:248;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3222:"       
   -i     --input                input image file (default: <empty string>)
   -bb    --bbox                 show bounding box  (default: false)
   -te    --te                   show bounding box in GDAL format: xmin ymin xmax ymax  (default: false)
   -c     --centre               Image centre in projected X,Y coordinates  (default: false)
   -ct    --colourtable          show colour table  (default: false)
   -s     --samples              Number of samples in image  (default: false)
   -l     --lines                Number of lines in image  (default: false)
   -nb    --nband                Show number of bands in image (default: false)
   -b     --band                 Band specific information (default: 0)
   -dx    --dx                   get resolution in x (in m) (default: false)
   -dy    --dy                   get resolution in y (in m) (default: false)
   -mm    --minmax               Show min and max value of the image  (default: false)
   -stat   --stat                 Show statistics (min,max, mean and stdDev of the image  (default: false)
   -m     --min                  Show min value of the image (or set minimum for histogram) (default: 0)
   -M     --max                  Show max value of the image (or set maximum for histogram) (default: 0)
   -rel   --rel                  Calculate relative histogram in percentage (default: false)
   -p     --projection           Show projection of the image  (default: false)
   -geo   --geo                  get geotransform:   (default: false)
   -il    --interleave           Show interleave  (default: false)
   -f     --filename             Image filename  (default: false)
   -cov   --cover                Image covers bounding box (or x and y pos) if printed to std out  (default: false)
   -x     --xpos                 x pos (default: -1)
   -y     --ypos                 y pos (default: -1)
   -r     --read                 read row y (in projected coordinates if geo option is set, otherwise in image coordinates, 0 based) (default: false)
   -ref   --ref                  get reference pixel (lower left corner of centre of gravity pixel) (default: false)
   -of    --oformat              get driver description  (default: false)
   -e     --extent               get boundary from extent from polygons in vector file (default: <empty string>)
   -ulx   --ulx                  Upper left x value bounding box (0) (default: 0)
   -uly   --uly                  Upper left y value bounding box (0) (default: 0)
   -lrx   --lrx                  Lower right x value bounding box (0) (default: 0)
   -lry   --lry                  Lower right y value bounding box (0) (default: 0)
   -hist   --hist                 Calculate histogram. Use --rel for a relative histogram output.  (default: false)
   -nbin   --nbin                 Number of bins used in histogram. Use 0 for all input values as integers (default: 0)
   -ot    --otype                Return data type (default: false)
   -d     --description          Return image description (default: false)
   -meta   --meta                 Show meta data  (default: false)
   -mask   --mask                 mask value(s) for no data to calculate reference pixel in image (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:248;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3484;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:3484;}i:2;i:3484;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:3484;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:851:"
pkinfo -i image.tif -nb                          #show number of bands in raster image.tif

pkinfo -i image.tif -max -b 1                    #show maximum value of band 1 (starting from 0) of raster image.tif

pkinfo -i image.tif -x 0 -y 0 -r -b 3 -b 2 -b 1  #read (dump) upper left pixel value for bands 3,2,1

pkinfo -i image.tif -x 3528120 -y 4329681 -geo -r -b 3 -b 2 -b 1  #read (dump) pixel value at this geographic location (x,y) for bands 3,2,1

pkinfo -i image1.tif -bb  #show bounding box (-ulx -uly -lrx -lry) in geo coordinates for image1.tif

pkinfo -i image1.tif -i image2.tif -i image3.tif -bb  #show bounding box (-ulx -uly -lrx -lry) in geo coordinates for each image (and union and intersect)

pkinfo -i image1.tif --mask 0 --mask 255 -ref  #show the refence pixel (centre of gravity) for image1.tif, treating 0 and 255 as NO VALUE
";i:1;s:4:"bash";i:2;N;}i:2;i:3513;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4378;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Advanced examples";i:1;i:2;i:2;i:4378;}i:2;i:4378;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4378;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:336:"
pkinfo -i image.tif $(pkinfo -i image.tif -c)  #read (dump) pixel value at image centre for band 0

pkinfo $(for IMAGE in *.tif; do pkinfo -i $IMAGE --cover -x 3528120 -y 4329681;done) -x 3528120 -y 4329681 -geo -r  #read (dump) pixel value in band 0 (default) for all images in current directory that cover this geographic location  
";i:1;s:4:"bash";i:2;N;}i:2;i:4414;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4763;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4763;}}