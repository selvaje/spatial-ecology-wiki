a:25:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"pkstat";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"NAME";}i:2;i:22;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:26;}i:6;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:46:" pkstat - calculate statistics from ASCII file";}i:2;i:26;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:26;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"SYNOPSIS";}i:2;i:77;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:91;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
   pkstatogr -i input [OPTION]
";i:1;s:4:"bash";i:2;N;}i:2;i:91;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:91;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"DESCRIPTION";}i:2;i:145;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:156;}i:14;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:62:" Calculate basic statistics from (columns in) ASCII file
     ";}i:2;i:156;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:156;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"OPTIONS";}i:2;i:224;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:237;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1881:"
   -i     --input                name of the input text file (default: <empty string>)
   -fs    --fs                   field separator. (default:  )
   -o     --output               output the selected columns (default: false)
   -c     --column               column nr, starting from 0 (default: 0)
   -r     --range                rows to start/end reading. Use -r 1 -r 10 to read first 10 rows where first row is header. Use 0 to read all rows with no header. (default: 0)
   -size  --size                 sample size (default: false)
   -m     --mean                 calculate mean value (default: false)
   -med   --median               calculate median (default: false)
   -var   --var                  calculate variance (default: false)
   -stdev --stdev                calculate standard deviation (default: false)
   -s     --sum                  calculate sum of column (default: false)
   -mm    --minmax               calculate minimum and maximum value (default: false)
   -min   --min                  calculate minimum value (default: 0)
   -max   --max                  calculate maximum value (default: 0)
   -hist  --hist                 calculate histogram (default: false)
   -bin   --bin                  number of bins to calculate histogram (default: 10)
   -rel   --relative             use percentiles for histogram to calculate histogram (default: false)
   -cor   --correlation          calculate Pearson produc-moment correlation coefficient between two columns (defined by -c <col1> -c <col2> (default: false)
   -e     --rmse                 calculate root mean square error between two columns (defined by -c <col1> -c <col2> (default: false)
   -reg   --regression           calculate linear regression error between two columns (defined by -c <col1> -c <col2> (default: false)
   -v     --verbose              verbose mode when > 0 (default: 0)
";i:1;s:4:"bash";i:2;N;}i:2;i:237;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2133;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Examples";i:1;i:1;i:2;i:2133;}i:2;i:2133;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2133;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:274:"
pkstat -i input.txt -n # count number of records (same as wc -l input.txt)

pkstat -i input.txt -hist -bin 100 -c 1 -rel # report relative histogram in second column (starting from 0) using 100 bins.

pkstat -i input.txt -m -c 0 -c 1 # report mean value of colums 0 and 1.
";i:1;s:4:"bash";i:2;N;}i:2;i:2161;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2448;}i:24;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2448;}}