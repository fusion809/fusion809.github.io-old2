[Fedora](https://getfedora.org/) (1, 2, 4, 6), a distribution developed by its own FOSS community, but sponsored by Red Hat, the largest Linux company in the world. It has strict licensing requirements for all software in its official repositories, which means that many proprietary multimedia codecs, graphics drivers and Wi-Fi drivers will need to be installed from third-party sources like [RPM Fusion](http://rpmfusion.org/). Fortunately, I have found one method that manages to install the drivers for my BCM43228 chip is running: {% include Code/codeus.html line1="wget http://git.io/vuLC7 -v -O fedora23_broadcom_wl_install.sh && sh ./fedora23_broadcom_wl_install.sh" %}<sup id="fnref:6"><a href="#fn:6" class="footnote">6</a></sup> (although this designed for Fedora 23 specifically, future releases may not be compatible with this command).

I personally have found it more difficult to pick up than Ubuntu, but it uses, generally more up-to-date software than Ubuntu. It has inferior community support, in my opinion, to Ubuntu, however. The main support site for it that I have used is [Ask Fedora](https://ask.fedoraproject.org/). There is also an IRC channel for support questions, called {% include Links/irc.html channel="fedora" puncr="." %} It has a less popular derivative with more liberal software licensing requirements and out-of-the-box support for Broadcom chips, [Chapeau](http://chapeaulinux.org/).

It is recommended that if you use Fedora, you upgrade your system to the latest release of Fedora (this upgrade process is called a &ldquo;*distribution upgrade*&rdquo;) at least once every nine-months. This process can be quite unpleasant, as software breakage is not unheard of after doing a distribution upgrade. Plus, there will be times when your computer will be practically unusable. If you would prefer to upgrade less frequently, but otherwise would like to have a Fedora-like system, I would recommend using [CentOS](https://centos.org). Distribution upgrades are only required for this distribution as infrequently as once every seven years. The main disadvantage of using CentOS as opposed to Fedora, is that CentOS's system software is usually fairly outdated. Additionally the latest release of CentOS (CentOS 7), has support for only the x86_64 processor instruction set (while Fedora also supports processors with armhfp and i686 instruction sets), so older computers may be incompatible with CentOS.