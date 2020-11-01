a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:16:"GRASS Batch jobs";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"Create a simple grass script in a text editor and run it directly on the shell.";}i:2;i:32;}i:5;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:111;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:113;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:113;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Open a text editor and write ";}i:2;i:115;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:150;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:54:"
kate ~/ost4sem/grassdb/europe/PCEM/my_grassjob.sh  &
";i:1;s:4:"bash";i:2;N;}i:2;i:150;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13:"
g.mapset -l
";i:1;s:4:"bash";i:2;N;}i:2;i:226;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:226;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:"Save it";}i:2;i:254;}i:14;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:261;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"
Run it directly on the shell giving the executable permission to the my_grassjob.sh.";}i:2;i:263;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:348;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
chmod u+x ~/ost4sem/grassdb/europe/PCEM/my_grassjob.sh
export GRASS_BATCH_JOB=~/ost4sem/grassdb/europe/PCEM/my_grassjob.sh
grass -text ~/ost4sem/grassdb/europe/PCEM
";i:1;s:4:"bash";i:2;N;}i:2;i:355;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:355;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:38:"To deactivate the batch job mode, run:";}i:2;i:536;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:580;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:23:"
unset GRASS_BATCH_JOB
";i:1;s:4:"bash";i:2;N;}i:2;i:580;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:616;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:616;}}