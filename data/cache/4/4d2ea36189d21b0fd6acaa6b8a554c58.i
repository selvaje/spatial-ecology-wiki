a:239:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"AWS setup";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:444:"
cd /home/user/Downloads/
wget http://www.spatial-ecology.net/ost4sem/exercise/keypair.pem
sudo chmod 400 /home/user/Downloads/keypair.pem
    
# see the below table for student ID
# ID student  1 2 3 4 

ssh -X -i /home/user/Downloads/keypair.pem  user*@ec2-54-234-116-177.compute-1.amazonaws.com
 
# transfer file to the instance 
scp -i /home/user/Downloads/keypair.pem yourfile user*@ec2-54-234-116-177.compute-1.amazonaws.com:/home/user*/
";i:1;s:4:"bash";i:2;N;}i:2;i:31;}i:4;a:3:{i:0;s:10:"table_open";i:1;a:3:{i:0;i:3;i:1;i:21;i:2;i:490;}i:2;i:489;}i:5;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:489;}i:6;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:489;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	ID	";}i:2;i:491;}i:8;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:495;}i:9;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:495;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:22:"	First Name	Last Name	";}i:2;i:496;}i:11;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:518;}i:12;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:518;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:"	Company	";}i:2;i:519;}i:14;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:528;}i:15;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:529;}i:16;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:529;}i:17;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:529;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	1	";}i:2;i:531;}i:19;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:534;}i:20;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:534;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:19:"	Bo Victor	Thomsen	";}i:2;i:535;}i:22;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:554;}i:23;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:554;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"	Municipality of Frederikssund	";}i:2;i:555;}i:25;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:586;}i:26;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:587;}i:27;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:587;}i:28;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:587;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	2	";}i:2;i:589;}i:30;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:592;}i:31;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:592;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"	Justin	Peters	";}i:2;i:593;}i:33;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:608;}i:34;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:608;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"	Indiana University	";}i:2;i:609;}i:36;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:629;}i:37;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:630;}i:38;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:630;}i:39;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:630;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	3	";}i:2;i:632;}i:41;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:635;}i:42;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:635;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"	Mark	Scott	";}i:2;i:636;}i:44;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:648;}i:45;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:648;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"	Cartomation	";}i:2;i:649;}i:47;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:662;}i:48;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:663;}i:49;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:663;}i:50;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:663;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	4	";}i:2;i:665;}i:52;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:668;}i:53;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:668;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"	Adam	Steer	";}i:2;i:669;}i:55;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:681;}i:56;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:681;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:32:"	Australian National University	";}i:2;i:682;}i:58;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:714;}i:59;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:715;}i:60;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:715;}i:61;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:715;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	5	";}i:2;i:717;}i:63;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:720;}i:64;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:720;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"	Martin	Ytre-Eide	";}i:2;i:721;}i:66;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:739;}i:67;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:739;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"	Norwegian Radiation Protection Authority	";}i:2;i:740;}i:69;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:782;}i:70;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:783;}i:71;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:783;}i:72;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:783;}i:73;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	6	";}i:2;i:785;}i:74;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:788;}i:75;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:788;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"	Thayer	Young	";}i:2;i:789;}i:77;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:803;}i:78;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:803;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"	Cicada Systems GIS Consulting	";}i:2;i:804;}i:80;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:835;}i:81;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:836;}i:82;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:836;}i:83;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:836;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	7	";}i:2;i:838;}i:85;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:841;}i:86;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:841;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"	Seongkyu	Lee	";}i:2;i:842;}i:88;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:856;}i:89;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:856;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"	APEC Climate Center	";}i:2;i:857;}i:91;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:878;}i:92;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:879;}i:93;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:879;}i:94;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:879;}i:95;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	8	";}i:2;i:881;}i:96;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:884;}i:97;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:884;}i:98;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"	Jonas Lund	Nielsen	";}i:2;i:885;}i:99;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:905;}i:100;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:905;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"	Danish Ministry of Energy, Utilities and Climate	";}i:2;i:906;}i:102;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:956;}i:103;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:957;}i:104;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:957;}i:105;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:957;}i:106;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:3:"	9	";}i:2;i:959;}i:107;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:962;}i:108;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:962;}i:109;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"	Andrew	Chan	";}i:2;i:963;}i:110;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:976;}i:111;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:976;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"	Firstbasesolutions Inc	";}i:2;i:977;}i:113;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1001;}i:114;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1002;}i:115;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1002;}i:116;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1002;}i:117;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	10	";}i:2;i:1004;}i:118;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1008;}i:119;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1008;}i:120;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:"	Aniruddha	Ghosh	";}i:2;i:1009;}i:121;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1026;}i:122;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1026;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"	University of California, Davis	";}i:2;i:1027;}i:124;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1060;}i:125;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1061;}i:126;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1061;}i:127;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1061;}i:128;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	11	";}i:2;i:1063;}i:129;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1067;}i:130;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1067;}i:131;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"	Robert	Dzur	";}i:2;i:1068;}i:132;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1081;}i:133;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1081;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"	Bohannan Huston, Inc.	";}i:2;i:1082;}i:135;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1105;}i:136;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1106;}i:137;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1106;}i:138;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1106;}i:139;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	12	";}i:2;i:1108;}i:140;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1112;}i:141;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1112;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"	Bernie	Doud	";}i:2;i:1113;}i:143;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1126;}i:144;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1126;}i:145;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"	Aero-Graphics, Inc.	";}i:2;i:1127;}i:146;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1148;}i:147;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1149;}i:148;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1149;}i:149;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1149;}i:150;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	13	";}i:2;i:1151;}i:151;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1155;}i:152;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1155;}i:153;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"	Casey	Francis	";}i:2;i:1156;}i:154;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1171;}i:155;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1171;}i:156;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"	Aero-Graphics, Inc.	";}i:2;i:1172;}i:157;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1193;}i:158;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1194;}i:159;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1194;}i:160;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1194;}i:161;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	14	";}i:2;i:1196;}i:162;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1200;}i:163;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1200;}i:164;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"	Thea	Youngs	";}i:2;i:1201;}i:165;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1214;}i:166;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1214;}i:167;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"	City of Portland	";}i:2;i:1215;}i:168;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1233;}i:169;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1234;}i:170;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1234;}i:171;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1234;}i:172;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	15	";}i:2;i:1236;}i:173;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1240;}i:174;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1240;}i:175;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"	Anton	Bakker	";}i:2;i:1241;}i:176;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1255;}i:177;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1255;}i:178;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"	GeoCat BV	";}i:2;i:1256;}i:179;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1267;}i:180;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1268;}i:181;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1268;}i:182;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1268;}i:183;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	16	";}i:2;i:1270;}i:184;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1274;}i:185;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1274;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:14:"	Ionut	Serban	";}i:2;i:1275;}i:187;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1289;}i:188;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1289;}i:189;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:10:"	employer	";}i:2;i:1290;}i:190;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1300;}i:191;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1301;}i:192;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1301;}i:193;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1301;}i:194;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	17	";}i:2;i:1303;}i:195;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1307;}i:196;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1307;}i:197;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:"	Mark	Burgoyne	";}i:2;i:1308;}i:198;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1323;}i:199;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1323;}i:200;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"	Met Office	";}i:2;i:1324;}i:201;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1336;}i:202;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1337;}i:203;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1337;}i:204;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1337;}i:205;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	18	";}i:2;i:1339;}i:206;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1343;}i:207;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1343;}i:208;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"	Tim	Bailey	";}i:2;i:1344;}i:209;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1356;}i:210;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1356;}i:211;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"	Humboldt State University	";}i:2;i:1357;}i:212;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1384;}i:213;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1385;}i:214;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1385;}i:215;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1385;}i:216;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	19	";}i:2;i:1387;}i:217;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1391;}i:218;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1391;}i:219;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"	Saffia	Hossainzadeh	";}i:2;i:1392;}i:220;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1413;}i:221;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1413;}i:222;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:"	FM Global	";}i:2;i:1414;}i:223;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1425;}i:224;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1426;}i:225;a:3:{i:0;s:13:"tablerow_open";i:1;a:0:{}i:2;i:1426;}i:226;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1426;}i:227;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"	20	";}i:2;i:1428;}i:228;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1432;}i:229;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1432;}i:230;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"	Nathan	Piekielek	";}i:2;i:1433;}i:231;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1451;}i:232;a:3:{i:0;s:14:"tablecell_open";i:1;a:3:{i:0;i:1;i:1;s:6:"center";i:2;i:1;}i:2;i:1451;}i:233;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"	Penn State University	";}i:2;i:1452;}i:234;a:3:{i:0;s:15:"tablecell_close";i:1;a:0:{}i:2;i:1475;}i:235;a:3:{i:0;s:14:"tablerow_close";i:1;a:0:{}i:2;i:1476;}i:236;a:3:{i:0;s:11:"table_close";i:1;a:1:{i:0;i:1476;}i:2;i:1476;}i:237;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1477;}i:238;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1477;}}