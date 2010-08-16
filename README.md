Installation
------------



Optional
--------

### [persistent root home directory][persistent root home]
	# mkdir -p /ffp/home/root/
	# usermod -d /ffp/home/root/ root
	# store-passwd.sh

### [ffp packages]
	# mkdir /ffp/pkg/
	# cd /ffp/pkg/
	# rsync -av --delete inreto.de::dns323/fun-plug/0.5/packages .

### [Uli's packages][uli packages]
	# cd /ffp/pkg/
	# rsync -av --delete wolf-u.li::ffp/additional .

### [nano][nano package]
	# funpkg -i /ffp/pkg/additional/app-editors/nano-2.0.9-2.tgz
	# cp -i /ffp/etc/examples/nanorc /ffp/etc/

Pen Drive
---------
Running ffp from a pen drive.

### Partitioning/formatting the pen drive
The following steps were done on a PC booted using a Gentoo LiveCD, though any Linux distribution should work.
Determine which drive letter the pen drive is:
	# fdisk -l
Remove any existing data on the pen drive:
	# dd if=/dev/zero of=/dev/sdX # where X is the device letter for the pen drive
Setup the partitions on the pen drive.
e.g. I had a 2GB pen drive and made one "type 82 (Swap)" 1GB partition and two "type 83 (Linux)" 500MB partitions:
	# cfdisk /dev/sdX # where X is the device letter for the pen drive
Format the pen drive partitions:
	# mkswap /dev/sdX0 # where X is the device letter for the pen drive
	# mke2fs -j /dev/sdX1 # where X is the device letter for the pen drive
	# mke2fs -j /dev/sdX2 # where X is the device letter for the pen drive

Packages
--------

* [ffp][ffp packages]
* [Uli][uli packages]


Resources
---------
* [CH3SNAS Tutorials][ch3nas tutorials]


[ffp]: http://www.inreto.de/dns323/fun-plug/0.5/
[ffp packages]: http://www.inreto.de/dns323/fun-plug/0.5/packages/
[uli packages]: http://ffp.wolf-u.li/
[nano package]: http://nas-tweaks.net/CH3SNAS:Tutorials/nano
[persistent root home]: http://nas-tweaks.net/CH3SNAS:Tutorials/Private-Public-Key-Authentication
[ch3nas tutorials]: http://nas-tweaks.net/CH3SNAS:Tutorials