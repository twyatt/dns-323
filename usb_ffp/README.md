[Transcend JetFlash V30 - 2 GB USB 2.0 Flash Drive][transcend 2gb]


Running ffp from a pen drive.

### Partitioning/formatting the pen drive
The following steps were done on a PC booted using a Gentoo LiveCD, though most Linux distributions should work.

1. Determine which drive letter the pen drive is:
#	
	# fdisk -l

2. Remove any existing data on the pen drive:

	# dd if=/dev/zero of=/dev/sdX # where X is the device letter for the pen drive

3. Setup the partitions on the pen drive.
> e.g. I had a 2GB pen drive and made one "type 82 (Swap)" 1GB partition and two "type 83 (Linux)" 500MB partitions:

	# cfdisk /dev/sdX # where X is the device letter for the pen drive

4. Format the pen drive partitions:

	# mkswap /dev/sdX0 # where X is the device letter for the pen drive
	# mke2fs -j /dev/sdX1 # where X is the device letter for the pen drive
	# mke2fs -j /dev/sdX2 # where X is the device letter for the pen drive



[transcend 2gb]: http://www.amazon.com/gp/product/B000FVGM38/ref=oss_product