a:38:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DESCRIPTION";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Command line to intersect two shape files.";}i:2;i:27;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:69;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"
The results is a new shape file storing only polygons that intersect each other.";}i:2;i:71;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:152;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"
The new shape file can overwrite an existing shape file.";}i:2;i:154;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:211;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"
The script use the Qgis libraries which depends on GEOS libraries.";}i:2;i:214;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:281;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"
Pay attention to have the GEOS libraries installed ( geos-config ";}i:2;i:283;}i:13;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:349;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"version ) and setting in the";}i:2;i:351;}i:15;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:379;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"
script the right QgsApplication.setPrefixPath(";}i:2;i:381;}i:17;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:428;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"/path";}i:2;i:429;}i:19;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:434;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:", True) where qgis is installed.";}i:2;i:435;}i:21;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:467;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"
The script can be considered and extension of the ogr2ogr for the missing intersection flag.";}i:2;i:469;}i:23;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:562;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:564;}i:25;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:565;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"
Download the file intersect.py";}i:2;i:567;}i:27;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:598;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:600;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:63:"  chmod 777 intersect.py
  sudo mv intersect.py /usr/local/bin/";}i:2;i:600;}i:30;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:59:"  intersect.py src_shapefile1  src_shapefile2 dst_shapefile";}i:2;i:669;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:669;}i:32;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:732;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:734;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:740;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3541:"
#!/usr/bin/python

# version 1  
# August 20 2013
#******************************************************************************
#  intersect.py
#
#  Repository: www.spatial-eclogy.net
#  Purpose:  Command line to intersect two shape files.
#            The results is a new shape file storing only polygons that intersect each other.
#            The new shape file can overwrite an existing shape file. 
#            The script use the Qgis libraries which depends on GEOS libraries.
#            Pay attention to have the GEOS libraries installed ( geos-config --version ) and setting in the
#            script the right QgsApplication.setPrefixPath("/path", True) where qgis is installed.
#            The script can be considered and extension of the ogr2ogr for the missing intersection flag.
#  Author:   Giuseppe Amatulli, giuseppe.amatulli@gmail.com
#******************************************************************************
#  Copyright (c) 2013, Giuseppe Amatulli, giuseppe.amatulli@gmail.com
# 
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the
#  Software is furnished to do so, subject to the following conditions:
# 
#  The above copyright notice and this permission notice shall be included
#  in all copies or substantial portions of the Software.
# 
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
#  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#  DEALINGS IN THE SOFTWARE.
#******************************************************************************
# intersect.py src_shapefile1  src_shapefile2 dst_shapefile
################################################################

import sys
import os
import os.path
from qgis import *
from qgis.core import *
QgsApplication.setPrefixPath("/usr", True)  # in Ubuntu 12.04 repository installation /usr/bin/qgis 
QgsApplication.initQgis()
from qgis.analysis import * 

def Usage():
    print('Usage: intersect.py src_shapefile1  src_shapefile2 dst_shapefile')
    sys.exit( 1 )

src_shpA = None
src_shpB = None
dst_shp  = None

if len(sys.argv) != 4:
    sys.exit(Usage())

i = 1
while i < len(sys.argv):
    arg = sys.argv[i]
    if src_shpA is None:
        src_shpA = arg
    elif src_shpB is None:
        src_shpB = arg
    elif dst_shp is None:
        dst_shp = arg
    else:
        Usage()
    i = i + 1

if  src_shpA is None:
    Usage()
 
if  src_shpA is None:
    Usage()

if  dst_shp is None:
    Usage()

shpA = QgsVectorLayer(  src_shpA  , "layerA", "ogr")
if not shpA.isValid():
    print "Layer failed to load! Check the",src_shpA, "path" 
    sys.exit(1)

shpB = QgsVectorLayer( src_shpB  , "layerB", "ogr")
if not shpB.isValid():
    print "Layer failed to load! Check the",src_shpB,"path" 
    sys.exit(1)

print "Intersecting",src_shpA,"with",src_shpB,"to create",dst_shp
QgsOverlayAnalyzer().intersection( shpA , shpB  , dst_shp )
QgsApplication.exitQgis()


";i:1;s:5:"bash|";i:2;s:12:"intersect.py";}i:2;i:740;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4311;}i:37;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4311;}}