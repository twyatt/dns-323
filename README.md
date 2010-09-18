Assumptions
-----------

These instructions will make a few assumptions regarding the setup of the DNS-323.

* The primary storage mount point is: `/mnt/HD_a2`
** This is true for most setups (e.g. mirrored and striped) but if your setup involves two JBOD drives then depending on where you want various files stored, some references to `/mnt/HD_a2 may` need to be replaced with, for example, `/mnt/HD_b2`.
* These instructions were written with a DNS-323 hardware revision B available, if you have a different hardware revision then some procedures may vary.


Installation
------------

### [fonz's fun_plug][ffp]
1. Copy [fun\_plug][fun_plug] and [fun\_plug.tgz][fun_plug.tgz] to Volume 1 and reboot. If successful, the fun_plug.tgz file is unpacked (ffp directory) and deleted. A telnet server is started.


Optional
--------

### [persistent root home directory][persistent root home]
	# mkdir -p /ffp/home/root/
	# usermod -d /ffp/home/root/ root
	# store-passwd.sh

### [ffp packages][]
	# mkdir /ffp/pkg/
	# cd /ffp/pkg/
	# rsync -av --delete inreto.de::dns323/fun-plug/0.5/packages .

### [Uli's packages][uli packages]
	# cd /ffp/pkg/
	# rsync -av --delete wolf-u.li::ffp/additional .

### [nano][nano package]
	# funpkg -i /ffp/pkg/additional/app-editors/nano-2.0.9-2.tgz
	# cp -i /ffp/etc/examples/nanorc /ffp/etc/

### git
Requires that optware be setup first.
	# wget http://ipkg.nslu2-linux.org/feeds/optware/dns323/cross/unstable/git_1.7.2.3-1_arm.ipk


Pen Drive
---------

For running ffp off of a USB pen drive connected to your DNS-323, see instructions in the [usb_ffp folder][].


Packages
--------

* [ffp][ffp packages]
* [Uli][uli packages]


Resources
---------
* [DNS-323 Wiki][dns323 wiki]
* [CH3SNAS Tutorials][ch3nas tutorials]


[ffp]: http://www.inreto.de/dns323/fun-plug/0.5/
[fun_plug]: http://www.inreto.de/dns323/fun-plug/0.5/fun_plug
[fun_plug.tgz]: http://www.inreto.de/dns323/fun-plug/0.5/fun_plug.tgz
[ffp packages]: http://www.inreto.de/dns323/fun-plug/0.5/packages/
[uli packages]: http://ffp.wolf-u.li/
[nano package]: http://nas-tweaks.net/CH3SNAS:Tutorials/nano
[persistent root home]: http://nas-tweaks.net/CH3SNAS:Tutorials/Private-Public-Key-Authentication
[dns323 wiki]: http://wiki.dns323.info/
[ch3nas tutorials]: http://nas-tweaks.net/CH3SNAS:Tutorials
[usb_ffp folder]: http://github.com/twyatt/dns-323/tree/master/usb_ffp/
