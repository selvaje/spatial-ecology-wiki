a:121:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:53:"Transform a simple "for loop" in multicore "for loop"";i:1;i:1;i:2;i:2;}i:2;i:2;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:2;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2;}i:4;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:49:"http://en.wikipedia.org/wiki/Multi-core_processor";i:1;s:22:" Multi-core processor ";}i:2;i:72;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:" are very common used in desk-top and lab-top pc.
If a pc has 8 processors you should open 8 programs or terminal to use all of them. But this is not an efficient way for stand-alone processing routines.";}i:2;i:149;}i:6;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:352;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:355;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:356;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:112:"
Let's consider that you want run a gdalwarp command to several tif files (*.tif), to perform a re-projection. 
";}i:2;i:358;}i:10;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:470;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:472;}i:12;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:56:" cd ~/ost4sem/exercise/basic_adv_gdalogr/fagus_sylvatica";}i:2;i:472;}i:13;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:533;}i:14;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"For Loop";i:1;i:3;i:2;i:533;}i:2;i:533;}i:15;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:533;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:533;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"You may run the full process by applying the loop in the usual way:";}i:2;i:553;}i:18;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:626;}i:19;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:156:"
time  ( for file in 20?0_TSSP_IP-ENS-A2-SP20_43023435.tif ; do 
    gdalwarp -r cubic -tr 0.008 0.008 -t_srs EPSG:4326 $file  proj_$file -overwrite
done )
";i:1;s:4:"bash";i:2;N;}i:2;i:626;}i:20;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:626;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:140:"In this way only one processor will be used. The others will be just sleeping or eventually swap when the process is applied to another tif.";}i:2;i:797;}i:22;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:937;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:940;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:940;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:"For example, the following picture shows the processing time during the for loop. As you can see only one processor, the red one, is working.";}i:2;i:943;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1084;}i:27;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:1;i:1;i:1;i:2;i:1085;}i:2;i:1084;}i:28;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1084;}i:29;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:1084;}i:30;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:18:":wiki:for_loop.png";i:1;N;i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:1086;}i:31;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1108;}i:32;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1109;}i:33;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:1109;}i:2;i:1109;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1109;}i:35;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1110;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1112;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1114;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"xargs loop";i:1;i:3;i:2;i:1114;}i:2;i:1114;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1114;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1114;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:1136;}i:42;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1140;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:1142;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:5:"xargs";}i:2;i:3;i:3;s:5:"xargs";}i:2;i:1144;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:1149;}i:46;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1151;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:" command allows to run a process splitting the task to several processors numerically defined by the user:";}i:2;i:1153;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1259;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:170:"

ls 20?0_TSSP_IP-ENS-A2-SP20_43023435.tif  | xargs -n 1 -P 2  bash -c $'

file=$1
gdalwarp -r cubic -tr 0.008 0.008 -t_srs EPSG:4326 $file  proj_$file -overwrite

' _ 

";i:1;s:4:"bash";i:2;N;}i:2;i:1266;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1266;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"The ";}i:2;i:1450;}i:52;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1454;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"-n";}i:2;i:1456;}i:54;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1458;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" option identifies the argument. The argument is the variable imported inside the loop. ";}i:2;i:1460;}i:56;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1548;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"
The argument is identifies with $1 and for a better understanding renamed to file (file=$1).";}i:2;i:1550;}i:58;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1643;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"
The ";}i:2;i:1645;}i:60;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1650;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"-P";}i:2;i:1652;}i:62;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1654;}i:63;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:" option identify the processors (in this case 2) used to run the full line inside -c $' ";}i:2;i:1656;}i:64;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1744;}i:65;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:1747;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" ' _ ";}i:2;i:1750;}i:67;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1755;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1757;}i:69;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1758;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"
This will process";}i:2;i:1760;}i:71;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1778;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"
- the first tif in processor number 1 (orange line)";}i:2;i:1780;}i:73;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1832;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"
- the second tif in processor number 2 (red line)";}i:2;i:1834;}i:75;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1884;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"
than";}i:2;i:1886;}i:77;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1891;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"
- the third  tif in processor number 1 (orange line)";}i:2;i:1893;}i:79;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1946;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:1948;}i:81;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1949;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:186:"
For example, the following picture shows the processing time during the xargs loop. As you can see two processors are running simultaneously, and the whole processing time is shorter. 
";}i:2;i:1951;}i:83;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2137;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2139;}i:85;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:1;i:1;i:1;i:2;i:2140;}i:2;i:2139;}i:86;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:2139;}i:87;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;N;i:2;i:1;}i:2;i:2139;}i:88;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:15:":wiki:xargs.png";i:1;N;i:2;N;i:3;N;i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2141;}i:89;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:2160;}i:90;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:2161;}i:91;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:2161;}i:2;i:2161;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2161;}i:93;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2162;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2164;}i:95;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2164;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"The use of more arguments is also possible";}i:2;i:2166;}i:97;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2214;}i:98;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:252:"
time  for file in 20?0_TSSP_??-ENS-A2-SP20_43023435.tif  ; do for res in 0.008 0.08 ; do echo $file $res ; done ; done | xargs -n 2 -P 2 bash -c $'

file=$1
res=$2
gdalwarp -r cubic -tr $res $res -t_srs EPSG:4326 $file RES$res"_"$file -overwrite

' _
";i:1;s:4:"bash";i:2;N;}i:2;i:2214;}i:99;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2214;}i:100;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"This will process";}i:2;i:2480;}i:101;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2497;}i:102;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"
- the first tif  with res = 0.008  in processor number 1";}i:2;i:2499;}i:103;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2556;}i:104;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"
- the first tif  with res = 0.08  in processor number 2";}i:2;i:2558;}i:105;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2614;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"
and then";}i:2;i:2616;}i:107;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2625;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:2627;}i:109;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2628;}i:110;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"
- the second tif  with res = 0.008  in processor number 1";}i:2;i:2630;}i:111;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2688;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"
- the second tif  with res = 0.08   in processor number 2";}i:2;i:2690;}i:113;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2748;}i:114;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"
and so on";}i:2;i:2750;}i:115;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:2760;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:".
";}i:2;i:2763;}i:117;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:2765;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2767;}i:119;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2768;}i:120;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2768;}}