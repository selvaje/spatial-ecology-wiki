a:36:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DESCRIPTION";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"A nice combination of ";}i:2;i:28;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:64:"http://km.fao.org/OFwiki/index.php/Open_Foris_Geospatial_Toolkit";i:1;s:31:" Open Foris Geospatial Toolkit ";}i:2;i:50;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:", in particular oft-stat, and AWK to calculate r pearson coefficent between two immages.";}i:2;i:152;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:240;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:242;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:243;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"
oft-pearson.bash  <input> <output> [mask]";}i:2;i:245;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:287;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:289;}i:13;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:290;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:125:"
The output is a text file reporting the r pearson coefficient.
The mask can be 0-1, 0 for no data and 1 for data, or 0-1-2-3";}i:2;i:292;}i:15;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:417;}i:16;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:420;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:423;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"
In case of a mask with multi-class it reports the r pearson for each class.";}i:2;i:425;}i:19;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:501;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:314:"
It can be used also to calculate how the r-pearson change at geographical level, simpling creating a mask id where the pixel size is 10 time the pixel size of the input.tif. 
The results output txt file will report a r-pearson value for each id.
The output txt can then been used to reclassify the id-image using ";}i:2;i:503;}i:21;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:46:"http://km.fao.org/OFwiki/index.php/Oft-reclass";i:1;s:14:" oft-reclass. ";}i:2;i:817;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:884;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"
In case of species distribution modeling can be used to identify local correlation between two variables or between the results of two models.";}i:2;i:886;}i:24;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1029;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1031;}i:26;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1032;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"
Download the file oft-pearson.bash";}i:2;i:1034;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1069;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:71:"  chmod 777 oft-pearson.bash
  sudo mv oft-pearson.bash /usr/local/bin/";}i:2;i:1069;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2072:"

#!/bin/bash
# giuseppe.amatulli@gmail.com  18
# calculate the  pearson's coefficient r between two bands
# $1 = input image containing the two bands
# $2 = txt file containing the r coefficent for each class
# $3 = input image containg categories data or mask image.
# 0 considering as no data
# 1 2 3 categories classes
# slightly modified by anssi to check the nbr of input image bands etc

version=1.01

args=$#

if [ $args != 2 -a $args != 3 ] ; then
echo "Usage <input> <output> [mask]"
echo "Input has to be an image with 2 band"
echo "Output is a text file reporting the r for each class"
exit
elif [ $args -eq 3 ] ; then 
if [ ! -f $3  ]  ; then 
echo "Mask file missing"
exit
else
UseMask="-um $3"     
fi
fi

echo "Calculating pearson cofficient for each class using file $1"

if [ -f $3  ]  ; then 
input=$1
bands=`gdalinfo $input|grep -c  ^Band" "`
    
if [ $bands -ne 2 ] ; then

echo "The input image has to have two bands"
exit
fi
else
echo "File $input does not exist"
fi

	


# force to be Float64 in case of high number. 

oft-calc  -ot Float64 $input  /tmp/tifb1xb2$$.tif  <<EOF
5
#1 #2 *
#1 1 *
#2 1 *
#1 #1 *
#2 #2 *
EOF

oft-stat -i /tmp/tifb1xb2$$.tif   -o /tmp/tifb1xb2$$.txt $UseMask  -nostd &>/dev/null

# formula for the pearson coefficient
# sum obtained using  average * obs
# print (obs * xysum - xsum * ysum)/((sqrt(obs*x2sum - xsum*xsum)) * (sqrt(obs*y2sum - ysum*ysum)))

#1 = x
#2 = y

#1 #2 *     xysum  $3   
#1 1 *      xsum   $4    
#2 1 *      ysum   $5    
#1 #1 *     x2sum  $6   
#2 #2 *     y2sum  $7   

# in case of using mask as uncillary layers it return the pearson for each class results
# use oft-reclass if you want obtained a map of pearson for each class.

if [ -n "$UseMask"  ] ; then 
awk '{ print $1 , (($2*$3*$2 - $4*$2*$5*$2))/((sqrt($2*$6*$2 - $4*$2*$4*$2))*(sqrt($2*$7*$2 - $2*$5*$2*$5 )))}' /tmp/tifb1xb2$$.txt > $2
else 
awk '{ print      (($2*$3*$2 - $4*$2*$5*$2))/((sqrt($2*$6*$2 - $4*$2*$4*$2))*(sqrt($2*$7*$2 - $2*$5*$2*$5 )))}' /tmp/tifb1xb2$$.txt > $2
fi 

rm /tmp/tifb1xb2$$.txt /tmp/tifb1xb2$$.tif

";i:1;s:5:"bash|";i:2;s:16:"oft-pearson.bash";}i:2;i:1153;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1153;}i:32;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:3259;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3261;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3262;}i:35;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3262;}}