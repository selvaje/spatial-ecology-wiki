a:70:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:21:"Adding users accounts";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"ssh to admin@grappolo";}i:2;i:36;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:57;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:349:"
sudo su
groupadd -g 1002 students # add a group of users called students
# add users stu1 stu2 ... stu10 
for i in $(seq 1 10) ; do 
useradd -u $(expr 2000 + $i) -g 1002 -c "Student $i" stu$i 
done

# Add password stu1 stu2 ... stu10 and a home directory
for i in $(seq 1 10) ; do  
echo -e "stu$i\nstu$i" | passwd stu$i 
mkdir /home/stu$i ;  done
";i:1;s:4:"bash";i:2;N;}i:2;i:64;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:64;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"Then ssh to node1 and node2 and do the same two loops in each node.";}i:2;i:428;}i:9;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:495;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:497;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:498;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:498;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Move home from sd cards to usb";i:1;i:2;i:2;i:498;}i:2;i:498;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:498;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:645:"
sudo blkid
# you find a usb name .... like "B866-7033"
# /dev/sda1: LABEL="NEW VOLUME" UUID="B866-7033" TYPE="vfat" PARTUUID="000ad8bf-01"
sudo nano /etc/fstab
# add the line below to the fstab file
# UUID=B866-7033  /media/tmp vfat   umask=0000,nofail,uid=admin,gid=students   0   0
sudo mount -a
cd /home
sudo cp -rp ./ /media/tmp
sudo umount -f /media/tmp
sudo rm -rf /media/tmp # (get rid of the tmp folder)
sudo mv /home /old_home
sudo mkdir /home
sudo nano /etc/passwd
# To have the admin not confised with students homes, change this 
# admin:x:1001:1001::/home/admin:/bin/bash
# into this
# admin:x:1001:1001::/old_home/admin:/bin/bash
";i:1;s:4:"bash";i:2;N;}i:2;i:547;}i:16;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1207;}i:17;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Data storage";i:1;i:2;i:2;i:1207;}i:2;i:1207;}i:18;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1207;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1207;}i:20;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:1;i:1;s:2:"**";}i:2;i:1;i:3;s:2:"**";}i:2;i:1232;}i:21;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:3;i:1;s:10:"Objectives";}i:2;i:3;i:3;s:10:"Objectives";}i:2;i:1234;}i:22;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:22:"markdowku_boldasterisk";i:1;a:2:{i:0;i:4;i:1;s:2:"**";}i:2;i:4;i:3;s:2:"**";}i:2;i:1244;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1246;}i:24;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1246;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1246;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1246;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" Automount 3 USB drives in grappolo";}i:2;i:1250;}i:28;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1285;}i:29;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1285;}i:30;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1285;}i:31;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1285;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:" Automount 4 USB drives in node 1 and 4 in node 2";}i:2;i:1289;}i:33;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1338;}i:34;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1338;}i:35;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1338;}i:36;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1338;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:" move the home directory of all users from the sd card to the usb drive 1 of grappolo";}i:2;i:1342;}i:38;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1427;}i:39;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1427;}i:40;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1427;}i:41;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:13:"noteimportant";}i:2;i:1;i:3;s:16:"<note important>";}i:2;i:1429;}i:42;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:94:"You need to insert all usb stick in your rasppi. (3 usb in grappolo, 4 in node1 and 4 in node2";}i:2;i:3;i:3;s:94:"You need to insert all usb stick in your rasppi. (3 usb in grappolo, 4 in node1 and 4 in node2";}i:2;i:1445;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:1539;}i:44;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1539;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"ssh to grappolo as admin.";}i:2;i:1547;}i:46;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:1572;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1574;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1059:"
sudo blkid # look at the hardware code of your usb drives
admin@grappolo:~ $                                                                 
#[sudo] password for admin: 
#/dev/mmcblk0p1: SEC_TYPE="msdos" LABEL="boot" UUID="7771-B0BB" TYPE="vfat" PARTUUID="000e2f78-01"
#/dev/mmcblk0p2: UUID="c7f58a52-6b71-4cea-9338-65f3b8af27bf" TYPE="ext4" PARTUUID="000e2f78-02"
#/dev/sda1: LABEL="NEW VOLUME" UUID="B866-7033" TYPE="vfat" PARTUUID="000ad8bf-01"
#/dev/sdb: LABEL="UDISK" UUID="003B-0FEF" TYPE="vfat"
#/dev/mmcblk0: PTUUID="000e2f78" PTTYPE="dos"


sudo nano /etc/fstab
# add the following lines to /etc/fstab 
#UUID=B866-7033  /home           vfat    umask=0000,nofail,uid=admin,gid=students   0   0
#UUID=003B-0FEF  /media/USB1     vfat    umask=0000,nofail,uid=admin,gid=students   0   0
#UUID=018C-1CA9  /media/USB2     vfat    umask=0000,nofail,uid=admin,gid=students   0   0
# and remove this line
#UUID=B866-7033  /media/tmp vfat   umask=0000,nofail,uid=admin,gid=students   0   0
for i in $(seq 1 2) ; do   mkdir /media/USB$i ;  done
sudo mount -a
";i:1;s:4:"bash";i:2;N;}i:2;i:1581;}i:49;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1581;}i:50;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Then add the for usb drive to node1 ";}i:2;i:2655;}i:51;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2691;}i:52;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:963:"
ssh node1
sudo blkid
#dev/mmcblk0p1: SEC_TYPE="msdos" LABEL="boot" UUID="7771-B0BB" TYPE="vfat" PARTUUID="000e2f78-01"
#/dev/mmcblk0p2: UUID="c7f58a52-6b71-4cea-9338-65f3b8af27bf" TYPE="ext4" PARTUUID="000e2f78-02"
#/dev/sdb: LABEL="UDISK" UUID="0214-AFDB" TYPE="vfat"
#/dev/sdd: LABEL="UDISK" UUID="0026-306D" TYPE="vfat"
#/dev/sdc: UUID="90C7-6ED0" TYPE="vfat"
#/dev/sda: LABEL="UDISK" UUID="0035-39DA" TYPE="vfat"
#/dev/mmcblk0: PTUUID="000e2f78" PTTYPE="dos"
# retain the UUID for sda, sdb, sdc and add

sudo nano /etc/fstab # so you can add the following lines
UUID=90C7-6ED0  /media/USB1 vfat umask=0000,nofail,uid=admin,gid=students   0   0
UUID=0026-306D  /media/USB2 vfat umask=0000,nofail,uid=admin,gid=students   0   0
UUID=0214-AFDB  /media/USB3 vfat umask=0000,nofail,uid=admin,gid=students   0   0
UUID=0035-39DA  /media/USB4 vfat umask=0000,nofail,uid=admin,gid=students   0   0
for i in $(seq 1 4) ; do   mkdir /media/USB$i ;  done
sudo mount -a
";i:1;s:4:"bash";i:2;N;}i:2;i:2698;}i:53;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:1;i:1;s:13:"noteimportant";}i:2;i:1;i:3;s:16:"<note important>";}i:2;i:3676;}i:54;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:2:{i:0;i:3;i:1;s:74:"Now do the same for node2 adding UUID of usb drives in the /etc/fstab file";}i:2;i:3;i:3;s:74:"Now do the same for node2 adding UUID of usb drives in the /etc/fstab file";}i:2;i:3692;}i:55;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:4:"note";i:1;a:1:{i:0;i:4;}i:2;i:4;i:3;s:7:"</note>";}i:2;i:3766;}i:56;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3775;}i:57;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Add user to grid engine user list";i:1;i:2;i:2;i:3775;}i:2;i:3775;}i:58;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3775;}i:59;a:3:{i:0;s:12:"preformatted";i:1;a:1:{i:0;s:40:"qconf -auser
#replace template with stu1";}i:2;i:3820;}i:60;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:20:"markdowku_codeblocks";i:1;b:1;i:2;i:4;i:3;s:1:"
";}i:2;i:3870;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3870;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Repeat the above to all users 1 2 to 10 and admin
";}i:2;i:3872;}i:63;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:78:"http://wwwx.cs.unc.edu/Research/bass/index.php/Administrators:SGE:Common_Tasks";i:1;s:10:" more info";}i:2;i:3922;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:35:" on grid engine user accounts here.";}i:2;i:4015;}i:65;a:3:{i:0;s:9:"linebreak";i:1;a:0:{}i:2;i:4050;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:4052;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4052;}i:68;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4052;}i:69;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4052;}}