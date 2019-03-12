a:36:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"DESCRIPTION";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Command line to add attribute area at each polygon in a shapefile.";}i:2;i:28;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:94;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"
The new attribute name, defined by the user, will be add to the shapefile.";}i:2;i:96;}i:7;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:171;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:94:"
In case the attribute name was already present in the shapefile the new value will be stored.";}i:2;i:173;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:267;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"
The script can be used also to drop a specific item ";}i:2;i:269;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:322;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
(like  ogrinfo  -al -geom=NO  -sql ";}i:2;i:324;}i:13;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:360;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"ALTER TABLE layername  DROP itemname ";}i:2;i:361;}i:15;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:398;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" input.shp )";}i:2;i:399;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:411;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"
No new shapefile will be created.
";}i:2;i:413;}i:19;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:448;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"
Download the file addattr-area.py";}i:2;i:450;}i:21;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:484;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:486;}i:23;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:487;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:489;}i:25;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:69:"  chmod 777 addattr-area.py
  sudo mv addattr-area.py /usr/local/bin/";}i:2;i:489;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:489;}i:27;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:564;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:566;}i:29;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:37:"  addattr-area.py input.shp item_name";}i:2;i:566;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:566;}i:31;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:607;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:609;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3867:"

#!/usr/bin/env python
# version 1  
# August 7 2013
#******************************************************************************
#  add addattr-area.py
#
#  Repository: www.spatial-eclogy.net
#  Purpose:  Command line to add attribute area at each polygon in a shapefile.
#            The new attribute name, defined by the user, will be add to the shapefile. 
#            In case the attribute name was already present in the shapefile the new value will be stored
#            The script can be used also to drop a specific item (like  ogrinfo  -al -geom=NO  -sql "ALTER TABLE layername  DROP itemname " input.shp )
#            No new shapefile will be created  
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
# addattr-area.py src_shapefile item_name [-drop]
################################################################


from osgeo import ogr
import sys

def Usage():
    print('Usage: addattr-area.py src_shapefile item_name [-drop]')
    print('Use -drop flag to drop an existing item')
    sys.exit( 1 )

input=None
itemname=None
drop=None
itemdrop=None

if len(sys.argv) < 2:
    sys.exit(Usage())

# Parse command line arguments.
i = 1
while i < len(sys.argv):
    arg = sys.argv[i]
    if input is None:
        input = arg
    elif itemname is None:
        itemname = arg
    elif arg == '-drop':
        itemdrop = itemname
    else:
        Usage()
    i = i + 1

if  input is None:
    Usage()

if  itemname is None:
    Usage()

# Open a Shapefile, and get field names
source = ogr.Open(input,1)
layer = source.GetLayer()


# delete the item for the -drop flag and exist. 
# no more action will be executed.
# delete the field if the index of the fild is != -1 
if itemdrop == itemname : 
    if layer.GetLayerDefn().GetFieldIndex(itemname) != -1 :
        layer.DeleteField(layer.GetLayerDefn().GetFieldIndex(itemname)) 
    sys.exit( 1 )

# delete the field if the index of the fild is != -1 
if layer.GetLayerDefn().GetFieldIndex(itemname) != -1 :
    layer.DeleteField(layer.GetLayerDefn().GetFieldIndex(itemname)) 

# add the field

new_field = ogr.FieldDefn(itemname, ogr.OFTReal ) 
layer.CreateField(new_field)

print ('Adding item and calculate the area') 

for poly in xrange(layer.GetFeatureCount()) :
    feature = layer.GetFeature(poly)
    geom=feature.GetGeometryRef()
    area=geom.GetArea()
    feature.SetField(itemname,area)
    if layer.SetFeature(feature) != 0:
        print "Failed to create feature in shapefile.\n"
        sys.exit( 1 )
    feature.Destroy()

# Close the Shapefile
source = None


";i:1;s:5:"bash|";i:2;s:15:"addattr-area.py";}i:2;i:616;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4520;}i:35;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4520;}}