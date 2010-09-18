These instructions cover running ffp from a USB pen drive.


USB Pen Drive Disk Image
------------------------

If you have a 2GB or greater pen drive available, you can download [this disk image][usb_ffp disk image] already configured for running ffp from a USB pen drive:
> For pen drives greater than 2GB, the disk image should still work, you will simply be left with unused space on your pen drive.

	$ unzip usb_ffp.bin.zip
	$ dd if=usb_ffp.bin of=/dev/sdX # where X is the device letter for the pen drive

If you used the disk image to configure your pen drive then you can skip to the **Enable Hard Drive Based ffp To "Reload" Into USB Based ffp** section.
> The pen drive used to create the disk image was purchased from [Amaozon][transcend 2gb] but many other 2GB (or more) pen drives should work.


Setting Up The USB Pen Drive
----------------------------

For those who can't use the disk image from the previous **USB Pen Drive Disk Image** section or prefer more fine grain control of their usb_ffp setup, then this section discusses the steps I followed to setup my pen drive.

### Partitioning/formatting the pen drive
The following steps were done on a PC booted using a [Gentoo][gentoo] LiveCD, though most Linux distributions should work.

1. Determine which drive letter the pen drive is:
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

### Installing ffp onto the pen drive


Enable Hard Drive Based ffp To "Reload" Into USB Based ffp
----------------------------------------------------------



[transcend 2gb]: http://www.amazon.com/gp/product/B000FVGM38/ref=oss_product
[usb_ffp disk image]: http://dl.dropbox.com/u/10482737/Development/dns-323/usb_ffp/dd/usb_ffp.bin.zip
[gentoo]: http://www.gentoo.org/