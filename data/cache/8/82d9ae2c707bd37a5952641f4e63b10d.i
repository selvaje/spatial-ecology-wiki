a:130:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Advance AWK scripts";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"Exercise:";}i:2;i:35;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:44;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"
Script: open by kate ";}i:2;i:46;}i:7;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:72:"http://www.spatial-ecology.net/ost4sem/exercise/basic_adv_awk/adv_awk.sh";i:1;s:45:" ~/ost4sem/exercise/basic_adv_awk/adv_awk.sh ";}i:2;i:68;}i:8;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:191;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"
Data: ";}i:2;i:193;}i:10;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:71:"http://www.spatial-ecology.net/ost4sem/exercise/basic_adv_awk/input.txt";i:1;s:44:" ~/ost4sem/exercise/basic_adv_awk/input.txt ";}i:2;i:200;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:321;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"
Directory: ~/ost4sem/exercise/basic";}i:2;i:323;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:359;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"adv";}i:2;i:3;i:3;s:3:"adv";}i:2;i:360;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:363;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"awk";}i:2;i:364;}i:17;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:367;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:"
";}i:2;i:369;}i:19;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:370;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:372;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:378;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:52:"
kate ~/ost4sem/exercise/basic_adv_awk/adv_awk.sh &
";i:1;s:4:"bash";i:2;N;}i:2;i:378;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:445;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Mathematical operation";i:1;i:3;i:2;i:445;}i:2;i:445;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:445;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:445;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Extract the maximum value:";}i:2;i:478;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:510;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:107:"
cd ~/ost4sem/exercise/basic_adv_awk
awk '{ if (NR>1) {if ($4>max) max= $4 }} END {print max }'  input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:510;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:510;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Sum the values in a column:";}i:2;i:630;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:663;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:66:"
awk ' BEGIN { sum=0 } { sum=sum+$4} END {print sum }'  input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:663;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:663;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"Sum the values in a column under a specific condition:";}i:2;i:742;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:802;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:59:"
awk '{ if($3==7) sum=sum+$5} END {print sum }'  input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:802;}i:38;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:802;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:57:"Sum the values in a column under two specific conditions:";}i:2;i:874;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:937;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
awk '{ if($3==7 && $2==2005  ) sum=sum+$5} END {print sum }'  input.txt
";i:1;s:3:"awk";i:2;N;}i:2;i:937;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1024;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:78:"A Bash/Awk tool for computing the average of columns based on  CLASS/ID column";i:1;i:3;i:2;i:1024;}i:2;i:1024;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1024;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1024;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"In this example we build a bash/awk tool able to calculate the average of columns based on  CLASS/ID column.
we use the ";}i:2;i:1114;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:1234;}i:48;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:4:"sort";}i:2;i:3;i:3;s:4:"sort";}i:2;i:1236;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:1240;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:" bash function";}i:2;i:1242;}i:51;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:19:"markdowku_linebreak";i:1;a:3:{i:0;s:3:"  
";i:1;i:5;i:2;i:1256;}i:2;i:5;i:3;s:3:"  
";}i:2;i:1256;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1259;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1265;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:58:"
more  ~/ost4sem/studycase/fire_risk/sh_script/average.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:1265;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1265;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"The file has to be sorted base on the  CLASS/ID column!!!
Sort the file, run the script, and replay to the questions:";}i:2;i:1337;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1460;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:116:"
sort -k 2,2  input.txt > input_s.txt 
sh ~/ost4sem/studycase/fire_risk/sh_script/average.sh input_s.txt output.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:1460;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1460;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"The same file can be run in a macro script using the following commands:";}i:2;i:1590;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1668;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:94:"
sh ~/ost4sem/studycase/fire_risk/sh_script/average.sh input_s.txt output.txt <<EOF
n
2
2
EOF
";i:1;s:4:"bash";i:2;N;}i:2;i:1668;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1668;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"Even more complicated is building up a script to calculate the weighted average. ";}i:2;i:1777;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1864;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:60:"
more  ~/ost4sem/studycase/fire_risk/sh_script/average_w.sh
";i:1;s:4:"bash";i:2;N;}i:2;i:1864;}i:67;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1941;}i:68;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Query a dataset on the basis of the header name";i:1;i:3;i:2;i:1941;}i:2;i:1941;}i:69;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1941;}i:70;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1941;}i:71;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"We create an example table saved as test.csv:";}i:2;i:2001;}i:72;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2046;}i:73;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:137:"
echo ID,column_1,colum_b,colum_c,TOTAL > test.csv
echo 1,3,5,6,14 >> test.csv
echo 2,5,4,6,15  >> test.csv
echo 3,8,4,6,18  >> test.csv
";i:1;s:4:"bash";i:2;N;}i:2;i:2053;}i:74;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:7:"notetip";}i:2;i:1;i:3;s:10:"<note tip>";}i:2;i:2205;}i:75;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:159:" In this example we also deal with .csv file (comma separated values text file). For this reason we need to use the option -F, to define our input file as csv.";}i:2;i:3;i:3;s:159:" In this example we also deal with .csv file (comma separated values text file). For this reason we need to use the option -F, to define our input file as csv.";}i:2;i:2215;}i:76;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:2374;}i:77;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2374;}i:78;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"We create two subset files corresponding to the ";}i:2;i:2383;}i:79;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2431;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"ID";}i:2;i:2432;}i:81;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2434;}i:82;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:" and to the ";}i:2;i:2435;}i:83;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2447;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:"column_b";}i:2;i:2448;}i:85;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2456;}i:86;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" (first file) and ";}i:2;i:2457;}i:87;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2475;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"ID";}i:2;i:2476;}i:89;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2478;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" and ";}i:2;i:2479;}i:91;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2484;}i:92;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"TOTAL";}i:2;i:2485;}i:93;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2490;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" (second file).";}i:2;i:2491;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2506;}i:96;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:213:"
for COLNAME in  colum_b TOTAL ; do
awk -F, -v COLNAME=$COLNAME ' { if (NR==1)  { for (col=1;col<=NF;col++) { if ($col==COLNAME) {colprint=col}}}  else  {print $1 "," $colprint }}  ' test.csv > $COLNAME.csv 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:2513;}i:97;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2741;}i:98;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:107:"Subset a limited number of column headers and query the dataset on the basis of the header subset selection";i:1;i:3;i:2;i:2741;}i:2;i:2741;}i:99;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2741;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2741;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"We have a dataset with 100 columns and 3 rows";}i:2;i:2861;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2906;}i:103;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:188:"
echo `seq -s \, 1 1 100`  > test.csv
echo `seq -s \, 2 20 2000`  >> test.csv
echo `seq -s \, 2 200 20000`  >> test.csv
awk -F,  ' { print NF }' test.csv
awk -F,  ' { print NR }' test.csv
";i:1;s:4:"bash";i:2;N;}i:2;i:2913;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2913;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:"We would like to select the first 5,  the 25th and the 90th to the 94th colums from the total 100 colums (Fields in AWK) in our dataset.
We redirect the list of the selection in a ";}i:2;i:3116;}i:106;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:3296;}i:107;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"list";}i:2;i:3297;}i:108;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:3301;}i:109;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"of";}i:2;i:3;i:3;s:2:"of";}i:2;i:3302;}i:110;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:3304;}i:111;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"columns.csv";}i:2;i:3305;}i:112;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:3316;}i:113;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:" file";}i:2;i:3317;}i:114;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3322;}i:115;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:186:"
awk -F,  ' {  for(i=1;i<6; i++) if(NR==1) printf("%s",$i" " ) ; if(NR==1)  printf("%s",$25" " ) ; for(i=90;i<95; i++) if(NR==1) printf("%s"," "$i  )   }' test.csv > list_of_columns.csv
";i:1;s:4:"bash";i:2;N;}i:2;i:3329;}i:116;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3329;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"Finally we carry out a query of the original dataset on the basis of the columns previously selected. ";}i:2;i:3530;}i:118;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3632;}i:119;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:252:"
for COLNAME in  `cat list_of_columns.csv` ; do
echo $COLNAME
awk -F, -v COLNAME=$COLNAME ' { if (NR==1)  { for (col=1;col<=NF;col++) { if ($col==COLNAME) {colprint=col}}}  else  {print $1 "," $colprint }} ' test.csv > OUTPUT_subset_$COLNAME.csv 
done
";i:1;s:4:"bash";i:2;N;}i:2;i:3639;}i:120;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3906;}i:121;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"Merge multiple files in multiple columns of one file";i:1;i:1;i:2;i:3906;}i:2;i:3906;}i:122;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:3906;}i:123;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:136:"pr -m -t -s, File1.txt File2.txt File3.txt  |  awk 'BEGIN{print "Column1,Column2,Column3"} {print$0}' > multiple_coulumn_output_file.csv";}i:2;i:3973;}i:124;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codeblocks";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:4115;}i:125;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:13:"noteimportant";}i:2;i:1;i:3;s:16:"<note important>";}i:2;i:4116;}i:126;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:32:"File 1 to 3 have only one coulmn";}i:2;i:3;i:3;s:32:"File 1 to 3 have only one coulmn";}i:2;i:4132;}i:127;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:4164;}i:128;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4171;}i:129;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4171;}}