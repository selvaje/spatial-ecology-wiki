a:121:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Basic AWK scripts";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Exercise:";}i:2;i:32;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:41;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"
Script: open by rstudio ";}i:2;i:43;}i:7;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:74:"http://www.spatial-ecology.net/ost4sem/exercise/basic_adv_awk/basic_awk.sh";i:1;s:48:" ~/ost4sem/exercise/basic_adv_awk/basic_awk.sh  ";}i:2;i:68;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:196;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"
Data: ";}i:2;i:198;}i:10;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:71:"http://www.spatial-ecology.net/ost4sem/exercise/basic_adv_awk/input.txt";i:1;s:44:" ~/ost4sem/exercise/basic_adv_awk/input.txt ";}i:2;i:205;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:326;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
Directory: ~/ost4sem/exercise/basic";}i:2;i:328;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:364;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"adv";}i:2;i:3;i:3;s:3:"adv";}i:2;i:365;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:368;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"awk";}i:2;i:369;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:372;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:374;}i:19;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:375;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:377;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:383;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:57:"
rstudio ~/ost4sem/exercise/basic_adv_awk/basic_awk.sh &
";i:1;s:4:"bash";i:2;N;}i:2;i:383;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:455;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:20:"Predefined variables";i:1;i:3;i:2;i:455;}i:2;i:455;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:455;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:455;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:"Change directory, printing and summarise the data by predefined variables:";}i:2;i:486;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:566;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:222:"
cd ~/ost4sem/exercise/basic_adv_awk
awk  '{ print $5 , $2 }' input.txt   # print a column 5 and 2  
awk  '{ print NF }'  input.txt       # print number of column
awk  '{ print NR }' input.txt        # print number of row
";i:1;s:3:"awk";i:2;N;}i:2;i:566;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:801;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:17:"Use BEGIN and END";i:1;i:2;i:2;i:801;}i:2;i:801;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:801;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:801;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Print a header and tail in a file:";}i:2;i:831;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:871;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:70:"
awk 'BEGIN { print "CODE"} { print $5 } END {print "TOT"}' input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:871;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:955;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Bash and AWK";i:1;i:3;i:2;i:955;}i:2;i:955;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:955;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:955;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"Sort base on column number 5 and then print column 5: ";}i:2;i:978;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1038;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:67:"
sort -k 5,5 -g  input.txt  |   awk  '{ print $5 }'  > output.txt 
";i:1;s:3:"awk";i:2;N;}i:2;i:1038;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1038;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"print column 5 and then sort column number 1 (that was previously number 5)";}i:2;i:1119;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1200;}i:47;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:64:"
awk  '{ print $5 }'  input.txt  |  sort -k 1,1   > output.txt 
";i:1;s:3:"awk";i:2;N;}i:2;i:1200;}i:48;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1278;}i:49;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Bash variables in AWK";i:1;i:2;i:2;i:1278;}i:2;i:1278;}i:50;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1278;}i:51;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1312;}i:52;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"Import a variable in awk and insert the awk-action in a loop";i:1;i:3;i:2;i:1312;}i:2;i:1312;}i:53;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1312;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:81:"
for (( i=1 ; i<=4 ; i++  )) ; do
awk  -v i=$i  '{ print $i }' input.txt  
done 
";i:1;s:3:"awk";i:2;N;}i:2;i:1388;}i:55;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1482;}i:56;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"AWK operations";i:1;i:2;i:2;i:1482;}i:2;i:1482;}i:57;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1482;}i:58;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1508;}i:59;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1508;}i:60;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1508;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:" Mathematical operation:";}i:2;i:1512;}i:62;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1536;}i:63;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1536;}i:64;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1536;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
awk  '{ print log($1) }' input.txt  
";i:1;s:3:"awk";i:2;N;}i:2;i:1543;}i:66;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1543;}i:67;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"String operation:";}i:2;i:1594;}i:68;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1617;}i:69;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
awk  '{ print substr($1,1,4) }' input.txt 
";i:1;s:3:"awk";i:2;N;}i:2;i:1617;}i:70;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1675;}i:71;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"Query operation:";i:1;i:3;i:2;i:1675;}i:2;i:1675;}i:72;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1675;}i:73;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:123:"
awk  '{ if($3>2) print $3 }'  input.txt
awk  '{ if($3>=2) print $3 }' input.txt  
awk  '{ if($3<2) print $3 }'  input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:1710;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1710;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"The logical operator (if condition) can be inserted also out side from the ";}i:2;i:1847;}i:76;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1922;}i:77;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"{}";}i:2;i:1923;}i:78;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1925;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:". ";}i:2;i:1926;}i:80;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1928;}i:81;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"
This is an example.";}i:2;i:1930;}i:82;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1950;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"
Add an index to the input file txt file:";}i:2;i:1952;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1999;}i:85;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:87:"
awk 'NR==1 { print "index "$0 } NR>1 { print NR-1,$0 }' input.txt > output_withID.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:1999;}i:86;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1999;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:52:"The same operation can be done also with this syntax";}i:2;i:2099;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2157;}i:89;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:96:"
awk ' { if (NR==1) { print "index "$0 } else { print NR-1,$0 }}' input.txt > output_withID.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:2157;}i:90;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2266;}i:91;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2266;}i:92;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2266;}i:93;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:1;i:3;s:6:"

  * ";}i:2;i:2266;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"Query operation for file management";}i:2;i:2272;}i:95;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:35:"Query operation for file management";}i:2;i:2272;}i:96;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"
If we want to count files in a folder ";}i:2;i:2307;}i:97;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:38:"If we want to count files in a folder ";}i:2;i:2308;}i:98;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:2346;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"tmp";}i:2;i:2348;}i:100;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2351;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:" of size bigger than 1Mb we can concatenate 3 functions piping each output as input for the next functiont";}i:2;i:2353;}i:102;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:106:" of size bigger than 1Mb we can concatenate 3 functions piping each output as input for the next functiont";}i:2;i:2353;}i:103;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2459;}i:104;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2459;}i:105;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2459;}i:106;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:2459;}i:107;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
ls -l /tmp/ | awk '{s=$5; if(s>1000000){print$0}}'| wc -l
";i:1;s:3:"awk";i:2;N;}i:2;i:2466;}i:108;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2538;}i:109;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2538;}i:110;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2538;}i:111;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:1;i:3;s:6:"

  * ";}i:2;i:2538;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Split a large file into small files of 100 lines each";}i:2;i:2544;}i:113;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:3;i:3;s:53:"Split a large file into small files of 100 lines each";}i:2;i:2544;}i:114;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2597;}i:115;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2597;}i:116;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2597;}i:117;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:16:"markdowku_ulists";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:2597;}i:118;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:62:"
awk  'NR%100==1{x="blockfile"++i ; }{print > x}'  input.txt 
";i:1;s:3:"awk";i:2;N;}i:2;i:2604;}i:119;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2678;}i:120;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2678;}}