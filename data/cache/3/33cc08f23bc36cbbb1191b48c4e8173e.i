a:67:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Manage your working environment with file commands";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Use this wiki to get familiar with file commands useful for managing directories and files.";}i:2;i:67;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:158;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:160;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"pwd ls cd mkdir commands";i:1;i:4;i:2;i:160;}i:2;i:160;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:160;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:160;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"First we need to create a new folder in the  ";}i:2;i:193;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:238;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"
~/ost4sem/exercise/basic";}i:2;i:240;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:265;}i:14;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:3:"adv";}i:2;i:3;i:3;s:3:"adv";}i:2;i:266;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:269;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"bash directory and call it example_manage";}i:2;i:270;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:311;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:289:"
pwd # Which is our working directory ?
ls # Which files exists in our working directory?
ls -l # list with detailed info
cd ~/ost4sem/exercise/basic_adv_bash # change working directory
ls 
ls -l
mkdir example_manage
ls
ls -l
rm -r example_manage # We remove the directory we just created
";i:1;s:4:"bash";i:2;N;}i:2;i:318;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:318;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"We can also create a folder or copy a file in a target directory from a different working directory";}i:2;i:622;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:721;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:100:"
cd
mkdir ~/ost4sem/exercise/basic_adv_bash/example_manage
ls
ls ~/ost4sem/exercise/basic_adv_bash/
";i:1;s:4:"bash";i:2;N;}i:2;i:728;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:843;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"Loops for multiple folder and files management";i:1;i:4;i:2;i:843;}i:2;i:843;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:843;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:843;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:155:"Now we need to create a set of working directories for different years (2000 to 2010) each one with 12 subdirectories corresponding to months (Jan to Dec).";}i:2;i:898;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1059;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:228:"
Year="Yr2000 Yr2001 Yr2002 Yr2003 Yr2004 Yr2005 Yr2006 Yr2007 Yr2008 Yr2009 Yr2010"
month="Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
for y in $Year ; do  mkdir $y
for m in $month ; do mkdir $y/$m ; 
done ; 
done
ls */*/
";i:1;s:4:"bash";i:2;N;}i:2;i:1059;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1302;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Now we create a text file";i:1;i:4;i:2;i:1302;}i:2;i:1302;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1302;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
echo This is my exercise for learning bash scripting $Year $month >> example_text.txt 
";i:1;s:4:"bash";i:2;N;}i:2;i:1342;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1445;}i:35;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:92:"And we copy this text file in every month for the years 2000 to 2010 folders we just created";i:1;i:4;i:2;i:1445;}i:2;i:1445;}i:36;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1445;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
for y in $Year ; do 
for m in $month ; do
cp example_text.txt $y/$m/copy_of_text.txt ;
done ;
done

ls */
ls */*/
";i:1;s:4:"bash";i:2;N;}i:2;i:1552;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1683;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Difference between cp and mv";i:1;i:4;i:2;i:1683;}i:2;i:1683;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1683;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1683;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Now en need to rename the example";}i:2;i:1721;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1754;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:70:"text.txt as Year2001.txt and move it from the ~/ost4sem/exercise/basic";}i:2;i:3;i:3;s:70:"text.txt as Year2001.txt and move it from the ~/ost4sem/exercise/basic";}i:2;i:1755;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1825;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:1826;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1829;}i:48;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:12:"bash/example";}i:2;i:3;i:3;s:12:"bash/example";}i:2;i:1830;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1842;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"manage folder to ../example_manage/Yr2001/ folder";}i:2;i:1843;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1892;}i:52;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:56:"
mv example_text.txt ./Yr2001/Year2001.txt
ls
ls Yr2001
";i:1;s:4:"bash";i:2;N;}i:2;i:1899;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1899;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Now we copy the Yr2001.txt file to the Yr2000 folder and name it copy";}i:2;i:1970;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:2039;}i:56;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"of";}i:2;i:3;i:3;s:2:"of";}i:2;i:2040;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:2042;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"year2001.txt";}i:2;i:2043;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2061;}i:60;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:56:"
cp ./Yr2001/Year2001.txt ./Yr2000/copy_of_year2001.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:2061;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2132;}i:62;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:59:"Now we delete the folder example_manage and all its content";i:1;i:4;i:2;i:2132;}i:2;i:2132;}i:63;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2132;}i:64;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:54:"rm -r ~/ost4sem/exercise/basic_adv_bash/example_manage";}i:2;i:2200;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2259;}i:66;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2259;}}