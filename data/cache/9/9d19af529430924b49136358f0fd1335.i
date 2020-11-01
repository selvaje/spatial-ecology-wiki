a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Manipulate images using bash scripts";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:43:"http://www.imagemagick.org/script/index.php";i:1;s:11:"Imagemagick";}i:2;i:52;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:236:" is an interesting usefull tools for creating, editing, composing, or converting images. ImageMagick is able to adit more than 100 image formats including DPX, EXR, GIF, JPEG, JPEG-2000, PDF, PhotoCD, PNG, Postscript, SVG, TIF and more.";}i:2;i:111;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:347;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:347;}i:8;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:349;}i:9;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:7:"Example";}i:2;i:3;i:3;s:7:"Example";}i:2;i:351;}i:10;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:358;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"
We have several images in png format and we need to convert them into pdf formats.
Change directory and look at your images:";}i:2;i:360;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:485;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:210:"
cd ~/ost4sem/exercise/basic_adv_grass
mkdir tmp_image
cp *.png tmp_image/ ; cd tmp_image 

for  image in  *.png ; do
convert $image `basename $image .png`.pdf
# convert $image $(basename $image .png).pdf
done
";i:1;s:4:"bash";i:2;N;}i:2;i:492;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:717;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:717;}}