a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pkdumpogr";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:29:" pkdumpogr - dump vector file";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:63;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:77;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
   pkdumpogr -i input [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:77;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:77;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:131;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:142;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:74:" Dump (columns of) vector file to standard output or ASCII text file
     ";}i:2;i:142;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:142;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:222;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:235;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:557:"
   -i     --input                Input shape file (default: <empty string>)
   -o     --output               Output ASCII file (default: <empty string>)
   -n     --name                 names of the attributes to select. Each attribute is stored in a separate band. Default is ALL: write all attributes (default: ALL)
   -pos   --pos                  include position (x and y) (default: false)
   -t     --transpose            transpose output (does not work for -n ALL  (default: false)
   -v     --verbose              verbose (Default: 0) (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:235;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:807;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:807;}i:2;i:807;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:807;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:383:"
pkdumpogr -i input.shp # dump entire content of vector file to standard output 

pkdumpogr -i input.shp -o output.txt -n ATTRIBUTE -pos # dump only ATTRIBUTE of vector file including x and y position and output to ASCII file

pkdumpogr -i input.shp -o output.txt -n ATTRIBUTE1 -n ATTRIBUTE2 -t # dump the two attributes ATTRIBUTE1 and ATTRIBUTE2 of vector file and transpose output
";i:1;s:4:"bash";i:2;N;}i:2;i:835;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1231;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1231;}}