Installation
------------

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