a:67:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Manage your working environment with file commands";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Use this wiki to get familiar with file commands useful for managing directories and files.";}i:2;i:67;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:158;}i:6;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:160;}i:7;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"pwd ls cd mkdir commands";i:1;i:4;i:2;i:160;}i:2;i:160;}i:8;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:160;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:160;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"First we need to create a new folder in the  ";}i:2;i:193;}i:11;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:238;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"
~/ost4sem/exercise/basic";}i:2;i:240;}i:13;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:265;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:267;}i:15;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:28:"markdowku_escapespecialchars";i:1;a:2:{i:0;i:5;i:1;s:2:"\_";}i:2;i:5;i:3;s:2:"\_";}i:2;i:270;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"bash directory and call it example_manage";}i:2;i:272;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:313;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:289:"
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
";i:1;s:4:"bash";i:2;N;}i:2;i:320;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:320;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:99:"We can also create a folder or copy a file in a target directory from a different working directory";}i:2;i:624;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:723;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:100:"
cd
mkdir ~/ost4sem/exercise/basic_adv_bash/example_manage
ls
ls ~/ost4sem/exercise/basic_adv_bash/
";i:1;s:4:"bash";i:2;N;}i:2;i:730;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:845;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:46:"Loops for multiple folder and files management";i:1;i:4;i:2;i:845;}i:2;i:845;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:845;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:845;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:155:"Now we need to create a set of working directories for different years (2000 to 2010) each one with 12 subdirectories corresponding to months (Jan to Dec).";}i:2;i:900;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1061;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:228:"
Year="Yr2000 Yr2001 Yr2002 Yr2003 Yr2004 Yr2005 Yr2006 Yr2007 Yr2008 Yr2009 Yr2010"
month="Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"
for y in $Year ; do  mkdir $y
for m in $month ; do mkdir $y/$m ; 
done ; 
done
ls */*/
";i:1;s:4:"bash";i:2;N;}i:2;i:1061;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1304;}i:31;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"Now we create a text file";i:1;i:4;i:2;i:1304;}i:2;i:1304;}i:32;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1304;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
echo This is my exercise for learning bash scripting $Year $month >> example_text.txt 
";i:1;s:4:"bash";i:2;N;}i:2;i:1344;}i:34;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1447;}i:35;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:92:"And we copy this text file in every month for the years 2000 to 2010 folders we just created";i:1;i:4;i:2;i:1447;}i:2;i:1447;}i:36;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1447;}i:37;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
for y in $Year ; do 
for m in $month ; do
cp example_text.txt $y/$m/copy_of_text.txt ;
done ;
done

ls */
ls */*/
";i:1;s:4:"bash";i:2;N;}i:2;i:1554;}i:38;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1685;}i:39;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:28:"Difference between cp and mv";i:1;i:4;i:2;i:1685;}i:2;i:1685;}i:40;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:1685;}i:41;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1685;}i:42;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Now en need to rename the example";}i:2;i:1723;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1756;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:70:"text.txt as Year2001.txt and move it from the ~/ost4sem/exercise/basic";}i:2;i:3;i:3;s:70:"text.txt as Year2001.txt and move it from the ~/ost4sem/exercise/basic";}i:2;i:1757;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1827;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"adv";}i:2;i:1828;}i:47;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:1831;}i:48;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:12:"bash/example";}i:2;i:3;i:3;s:12:"bash/example";}i:2;i:1832;}i:49;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:1844;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"manage folder to ../example_manage/Yr2001/ folder";}i:2;i:1845;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1894;}i:52;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:56:"
mv example_text.txt ./Yr2001/Year2001.txt
ls
ls Yr2001
";i:1;s:4:"bash";i:2;N;}i:2;i:1901;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1901;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"Now we copy the Yr2001.txt file to the Yr2000 folder and name it copy";}i:2;i:1972;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:1;i:1;s:1:"_";}i:2;i:1;i:3;s:1:"_";}i:2;i:2041;}i:56;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:3;i:1;s:2:"of";}i:2;i:3;i:3;s:2:"of";}i:2;i:2042;}i:57;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:25:"markdowku_italicunderline";i:1;a:2:{i:0;i:4;i:1;s:1:"_";}i:2;i:4;i:3;s:1:"_";}i:2;i:2044;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"year2001.txt";}i:2;i:2045;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2063;}i:60;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:56:"
cp ./Yr2001/Year2001.txt ./Yr2000/copy_of_year2001.txt
";i:1;s:4:"bash";i:2;N;}i:2;i:2063;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2134;}i:62;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:59:"Now we delete the folder example_manage and all its content";i:1;i:4;i:2;i:2134;}i:2;i:2134;}i:63;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:4;}i:2;i:2134;}i:64;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:54:"rm -r ~/ost4sem/exercise/basic_adv_bash/example_manage";}i:2;i:2202;}i:65;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2261;}i:66;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2261;}}