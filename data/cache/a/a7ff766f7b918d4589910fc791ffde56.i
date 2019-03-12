a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"pkstatogr";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:25;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:29;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:56:" pkstatogr - calculate basic statistics from vector file";}i:2;i:29;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:29;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:90;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:104;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
   pkstatogr -i input [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:104;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:104;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:158;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:169;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:82:" Calculate basic statistics from vector file such as mean, min and max value
     ";}i:2;i:169;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:169;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:257;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:270;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:601:"
   -i     --input                Input shape file (default: <empty string>)
   -n     --fname                fields on which to calculate statistics (default: <empty string>)
   -nbin  --nbin                 number of bins (default: 0)
   -m     --min                  calculate minimum value (default: false)
   -M     --max                  calculate maximum value (default: false)
   -mean  --mean                 calculate mean value (default: false)
   -stdev --stdev                calculate standard deviation (default: false)
   -v     --verbose              verbose mode if > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:270;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:886;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:886;}i:2;i:886;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:886;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:246:"
pkstatogr -i input.shp -f FIELDID -n 100 # report histogram of values in FIELDID (to standard output)

pkstatogr -i input.shp -f FIELDID -m -M -mean -stdev # report min, max, mean and standard deviation of values in FIELDID (to standard output)
";i:1;s:4:"bash";i:2;N;}i:2;i:914;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1174;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1174;}}