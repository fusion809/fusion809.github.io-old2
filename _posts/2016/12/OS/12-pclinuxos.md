## PCLinuxOS
{% include_relative infoboxes/12-pclinuxos.html %}

[**PCLinuxOS**](http://www.pclinuxos.com/) is a Linux distribution with fairly liberal licensing requirements and out-of-the-box support for most hardware with Linux support (including Broadcom wireless). It is unusual among Linux distributions in that it still uses the [APT-RPM](https://en.wikipedia.org/wiki/APT-RPM) (which was last updated in early 2008){% include_relative includes/fn-inline.html no="7" %} front-end for the RPM package manager. Its official repositories also include some proprietary desktop applications like RuneScape's NXT Client. It is also unusual in a few other ways:

* It follows a rolling release model, but is fairly conservative, in that it consists mostly of more stable (as opposed to the very latest), well-tested versions of its included software. For example, its kernel is presently of the 4.4.x series (the latest LTS release). Most rolling release distros are more bleeding-edge. Likewise it uses KDE Plasma 4 and still (despite KDE Plasma 5 being out since July 2014) has not added Plasma 5 to its official repositories.
* Has not adopted the systemd init system and has no intention to ever adopt it. 
* Follows an authoritarian governance model, with a Benevolent Dictator For Life (BDFL), Bill Reynolds (texstar). Or so I think, not certain about this as I have asked for info on this in their IRC channel but I got no reply after waiting for >5 hours. Only 9 or so other people in the channel though so that was not unexpected. 

I personally have found it a fairly buggy distribution for one not using software on the bleeding-edge. I maintain a VirtualBox VM running it, and I have had it broken before by a kernel upgrade. It is fairly beginner-friendly and is best suited for those that:

* Want an out-of-the-box experience
* Like a conservative distribution, in terms of software versioning, favouring stability or the very latest software versions. 
* Are OK with an authoritarian distribution. Dictatorships do not sit too well with me personally, partly because I always fear that I will grow to love the distribution and then the dictator will make a decision that turns the distribution into something I dislike. 

{% include Layouts/clear.html %}
