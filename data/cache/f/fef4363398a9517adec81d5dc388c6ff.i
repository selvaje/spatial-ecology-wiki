a:89:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:67:"Transform a simple "for loop script" in multicore "for loop script"";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:84;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:110:"
Let's consider that you want run a gdalwarp command to several tif files (*.tif), to perform a re-projection.";}i:2;i:86;}i:6;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:196;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"
We have seen in the ";}i:2;i:198;}i:8;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:19:"wiki:cluster_xargs1";i:1;s:55:" Transform a simple "for loop" in multicore "for loop" ";i:2;s:4:"left";i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:219;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" how to create a simple ";}i:2;i:299;}i:10;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:323;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"for loop";}i:2;i:325;}i:12;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:333;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:" and how to transform a simple ";}i:2;i:335;}i:14;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:366;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"for loop";}i:2;i:368;}i:16;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:376;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:" in a multicore loop using xargs .";}i:2;i:378;}i:18;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:412;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:133:"
Now let's suppose that we have a script called myscript4cluster.sh with inside gdalwarp command and that we want run this script by ";}i:2;i:414;}i:20;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:547;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"xargs";}i:2;i:549;}i:22;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:554;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:556;}i:24;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:557;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:559;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:560;}i:27;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:62:" cd /data/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica
 ";}i:2;i:560;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:560;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Therefore, we create a script myscript4cluster.sh (saved to /home/user/ost4sem/exercise/basic";}i:2;i:629;}i:30;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:722;}i:31;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"adv";}i:2;i:3;i:3;s:3:"adv";}i:2;i:723;}i:32;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:726;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"gdalogr/fagus_sylvatica/) within the following code: ";}i:2;i:727;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:780;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:89:"
file=$1
gdalwarp -r cubic -tr 0.008 0.008 -t_srs EPSG:4326 $file  proj_$file -overwrite
";i:1;s:5:"bash|";i:2;s:20:"myscript4cluster.sh ";}i:2;i:787;}i:36;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:787;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"You can run myscript4cluster.sh with the following code";}i:2;i:914;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:970;}i:39;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:148:" ls 20?0_TSSP_IP-ENS-A2-SP20_43023435.tif  | xargs -n 1 -P 2  bash /home/user/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica/myscript4cluster.sh";}i:2;i:970;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:970;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:1123;}i:42;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1127;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"-n";}i:2;i:1129;}i:44;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1131;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:" option identifies the argument (in this case $1 renamed $file) used inside the  ";}i:2;i:1133;}i:46;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1214;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"myscript4cluster.sh";}i:2;i:1216;}i:48;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1235;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" script.";}i:2;i:1237;}i:50;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1245;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"
The ";}i:2;i:1247;}i:52;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1252;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"-P";}i:2;i:1254;}i:54;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1256;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:" option identifies the processors (in this case 2) used to run ";}i:2;i:1258;}i:56;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1321;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"my";}i:2;i:1323;}i:58;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1325;}i:59;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:6:"script";}i:2;i:3;i:3;s:6:"script";}i:2;i:1326;}i:60;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1332;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"4cluster.sh";}i:2;i:1333;}i:62;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1344;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" script.";}i:2;i:1346;}i:64;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1354;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1356;}i:66;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1357;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"
If you run ";}i:2;i:1359;}i:68;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1371;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"myscript4cluster.sh";}i:2;i:1373;}i:70;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1392;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" by the ";}i:2;i:1394;}i:72;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1402;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"xargs";}i:2;i:1404;}i:74;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1409;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:" command all the standard error are listed in chaotic order and is not easy to track back errors, especially when you process several files. ";}i:2;i:1411;}i:76;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1552;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"
So, the good way is to create a log file that store all the error in a file, one for each processes.";}i:2;i:1554;}i:78;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1655;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"
In order to do this you have to modify the myscript4cluster.sh in the following order. ";}i:2;i:1657;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1745;}i:81;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:214:"
export file=$1
time (
echo processing file $file
gdalwarp -r cubic -tr 0.008 0.008 -t_srs EPSG:4326 $file  proj_$file -overwrite
echo end of the sorting action of  file $file
) 2>&1 | tee  /tmp/log_of_$file".txt"
";i:1;s:5:"bash|";i:2;s:20:"myscript4cluster.sh ";}i:2;i:1753;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1753;}i:83;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2003;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"
You may see the results of the log file:";}i:2;i:2005;}i:85;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2046;}i:86;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:63:" more /tmp/tmp/log_of_2080_TSSP_IP-ENS-A2-SP20_43023435.tif.txt";}i:2;i:2046;}i:87;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2046;}i:88;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2046;}}