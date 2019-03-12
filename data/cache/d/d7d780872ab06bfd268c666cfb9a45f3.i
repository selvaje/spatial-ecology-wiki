a:79:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"Exercise 9: pktools with multi-core processors";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"In this exercise the following tools will be used:";}i:2;i:62;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:112;}i:6;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:112;}i:7;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:112;}i:8;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:112;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" pktools: pkinfo";}i:2;i:116;}i:10;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:132;}i:11;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:132;}i:12;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:132;}i:13;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:132;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:61:" bash: for loop, xargs, time, sleep, redirection to /dev/null";}i:2;i:136;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:197;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:197;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:197;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:197;}i:19;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:198;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"Create a script /tmp/myscript.sh";}i:2;i:200;}i:21;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:232;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:234;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:240;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:68:"
INPUT=$1
NOVALUE=$2
pkinfo -i $INPUT --ref -mask $NOVALUE
#sleep 1
";i:1;s:4:"bash";i:2;N;}i:2;i:240;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:240;}i:26;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:322;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Make the script executable";}i:2;i:324;}i:28;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:350;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:352;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:358;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
chmod 755 /tmp/myscript.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:358;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:358;}i:33;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:400;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Time the following command using a single processor";}i:2;i:402;}i:35;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:453;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:455;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:461;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:122:"
time for ((NOVALUE=0;NOVALUE<19;++NOVALUE));do pkinfo -i ${LANDSATDIR}/${LANDSATIMG} --ref -mask $NOVALUE;done>/dev/null
";i:1;s:4:"bash";i:2;N;}i:2;i:461;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:461;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"The output should be something like";}i:2;i:597;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:638;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
real	0m18.691s
user	0m17.773s
sys	0m0.776s
";i:1;s:4:"bash";i:2;N;}i:2;i:638;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:638;}i:44;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:696;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Now do the same with a sleep command of 1 second after each iteration";}i:2;i:698;}i:46;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:767;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:769;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:775;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:130:"
time for ((NOVALUE=0;NOVALUE<19;++NOVALUE));do pkinfo -i ${LANDSATDIR}/${LANDSATIMG} --ref -mask $NOVALUE;sleep 1;done>/dev/null
";i:1;s:4:"bash";i:2;N;}i:2;i:775;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:775;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:"The output should be something like";}i:2;i:919;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:960;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
real	0m38.022s
user	0m17.669s
sys	0m1.168s
";i:1;s:4:"bash";i:2;N;}i:2;i:960;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:960;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Question: What could be the difference between real and user time?";}i:2;i:1019;}i:56;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1091;}i:57;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:135:"
time for ((NOVALUE=0;NOVALUE<19;++NOVALUE));do echo 19990724_L7E_IP_CW.tif $NOVALUE;done |xargs -n 2 -P 2 /tmp/myscript.sh >/dev/null
";i:1;s:4:"bash";i:2;N;}i:2;i:1091;}i:58;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1091;}i:59;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1241;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Perform the same tasks in parallel with two processors using xargs";}i:2;i:1243;}i:61;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1309;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1311;}i:63;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:135:"
time for ((NOVALUE=0;NOVALUE<19;++NOVALUE));do echo 19990724_L7E_IP_CW.tif $NOVALUE;done |xargs -n 2 -P 2 /tmp/myscript.sh >/dev/null
";i:1;s:4:"bash";i:2;N;}i:2;i:1318;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1318;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Notice the real time difference";}i:2;i:1468;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1505;}i:67;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
real	0m10.996s
user	0m20.029s
sys	0m0.844s
";i:1;s:4:"bash";i:2;N;}i:2;i:1505;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1505;}i:69;a:3:{i:0;s:14:"underline_open";i:1;a:0:{}i:2;i:1564;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"Uncomment the sleep command in the script and perform the same task";}i:2;i:1566;}i:71;a:3:{i:0;s:15:"underline_close";i:1;a:0:{}i:2;i:1633;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1635;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1635;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"Question: what has happened with the sleep command now?";}i:2;i:1637;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1692;}i:76;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
real	0m21.392s
user	0m20.209s
sys	0m1.284s
";i:1;s:4:"bash";i:2;N;}i:2;i:1699;}i:77;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1756;}i:78;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1756;}}