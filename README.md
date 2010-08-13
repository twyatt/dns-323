Installation
------------

### [ffp packages]
	# mkdir /ffp/pkg/
	# cd /ffp/pkg/
	# rsync -av --delete inreto.de::dns323/fun-plug/0.5/packages .

### [uli packages]
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
* [CH3SNAS Tutorials]


[ffp]: http://www.inreto.de/dns323/fun-plug/0.5/
[ffp packages]: http://www.inreto.de/dns323/fun-plug/0.5/packages/
[uli packages]: http://ffp.wolf-u.li/
[nano package]: http://nas-tweaks.net/CH3SNAS:Tutorials/nano
[ch3nas tutorials]: http://nas-tweaks.net/CH3SNAS:Tutorials