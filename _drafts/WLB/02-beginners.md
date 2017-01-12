## Beginners

Beginners and less advanced users that just want to get their system up and working, and want the system to be easily maintainable should ideally choose a beginner-friendly distribution. Users that are likely to need a lot of support (for example, users that want to use quite a few pieces of proprietary, or obscure software) should probably use a more popular beginner-friendly distribution like [**deepin**](https://www.deepin.org/en/), [**elementary OS**](https://elementary.io/), [**Linux Mint**](https://linuxmint.com/), [**Ubuntu**](https://www.ubuntu.com/) or [**Zorin OS**](https://zorinos.com/).

### deepin
{% include Links/image.html os="deepin_15.3.png" width="600px" float="left" description="The Deepin Desktop Environment running on deepin 15.3" %}

**deepin** is probably best for Mandarin Chinese speakers (as one will probably get better online support if one does, English support is available but probably inferior), those that like macOS's desktop layout and those using laptops with Broadcom WiFi chips. deepin uses its own home-grown desktop environment, the Deepin Desktop Environment (DDE). DDE has only been ported to two other Linux distributions that I am aware of (and hence indirectly also their derivatives), Arch Linux and Fedora. DDE is nowhere near as configurable (or customizable) as GNOME, KDE Plasma 5, LXDE, MATE and Xfce. Despite this it is beginner-friendly and aesthetically pleasing. It uses more system resources (like CPU and RAM) than many lighter desktop environments like LXDE, MATE and Xfce, so it is not suitable for older computers. deepin's latest releases are based on Debian's unstable branch, although its releases prior to late 2015 were based on Ubuntu. Despite being built on Debian's unstable branch it uses the latest LTS kernel (presently the 4.4.x series). 

{% include Layouts/clear.html %}

### elementary OS
{% include Links/image.html os="elementary_OS_0.4.png" width="600px" float="left" description="Pantheon running on elementary OS 0.4" %}

Those that are a little rusty on Mandarin Chinese (or cannot speak it at all, like myself), but still like macOS's desktop layout and/or have a laptop with a Broadcom WiFi chip should probably use **elementary OS**. deepin comes with Spotify pre-installed, while elementary OS does not, but it should be easy to install Spotify on elementary OS nonetheless by [following instructions from Spotify's official website](https://www.spotify.com/download/linux/). elementary OS is based on Ubuntu (LTS) releases and it uses its own custom, macOS-like desktop environment, Pantheon.

{% include Layouts/clear.html %}

### Linux Mint
{% include Links/image.html os="Linux_Mint_18.1.png" width="600px" float="left" description="Linux Mint 18.1's Cinnamon desktop" %}

**Linux Mint** is ideal for those that like Windows 7's desktop layout, but for whatever reason do not want to use Zorin OS and do not need out-of-the-box Broadcom WiFi support (although users can install the necessary Broadcom firmware later from its official repositories). It too is built on the LTS releases of Ubuntu. Cinnamon is a desktop environment specifically developed for Linux Mint by Linux Mint's developers, it was forked from GNOME 3 early on in GNOME 3's development. It was forked from GNOME 3 due to users' dissatisfications with the user interface of the new GNOME 3 at the time.

{% include Layouts/clear.html %}

### Manjaro / Sabayon Linux
{% include Links/image.html os="Manjaro_Linux_16.10.3.png" width="600px" float="left" description="Manjaro Linux running the Xfce desktop" %}

There are two Linux distributions I can think of, that may be suited to selected beginners. They have excellent out-of-the-box Broadcom WiFi support, but they are also more cutting-edge in terms of how up-to-date their software is and as such may be more prone to severely problematic bugs (such as bugs that prevent one from booting, or bugs that make certain desktop environments unusable). These distributions are Manjaro Linux and Sabayon Linux. Manjaro Linux is often more cutting-edge than Sabayon (although its default kernel is the latest LTS kernel), so it may be more prone to serious bugs, but its free online support is likely superior, in terms of response times. 

{% include Layouts/clear.html %}

{% include Links/image.html os="Sabayon_Linux_Xfce_20170113.png" width="600px" float="left" description="Sabayon Linux running the Xfce desktop" %}

It may be more challenging to get some proprietary/obscure pieces of software on Sabayon, compared to Manjaro, however. For example, if one wants to install RuneScape's NXT Client on Sabayon one would have to use the Portage package manager of Gentoo and emerge the `games-rpg/runescape-launcher` package. Using Portage is certainly not something I would recommend to a beginner, as while it is powerful it is very error-prone. While on Manjaro one would merely install it from the Arch User Repository using the Yaourt AUR helper (which comes pre-installed with Manjaro). Several IDEs/text editors (or at least their latest versions) I have also found more challenging to install on Sabayon, compared to Manjaro, including:

* Atom (latest version in the official Sabayon repositories is 1.12.2, while 1.13.0 is the latest upstream release of Atom)
* Brackets (no version of it is in the official Sabayon repositories)
* CodeLite (latest in the official Sabayon repositories is 4.x, while the latest release is 10.0)
* Eclipse (latest in the official repositories is 4.4.x, while 4.6.x is the latest release)
* LightTable (no version of it is in the official Sabayon repositories)
* NetBeans (latest in the official repositories is 8.1, while 8.2 is the latest release)
* Visual Studio Code (no version of it is in the official Sabayon repositories)

while on Manjaro each of these pieces of software are incredibly easy to install in their latest versions using pacman (as is the case of Atom, Eclipse and NetBeans) or Yaourt. Most of these pieces of software are easy to get on the previously mentioned beginner-friendly distributions (deepin, elementary OS, Linux Mint, Ubuntu, Zorin OS) using the default package manager, with the possible exceptions of Eclipse, LightTable and NetBeans. These three IDEs need to be installed via either their own installer (as is the case with Eclipse and NetBeans), or they have to be run from an extracted binary tarball (as is the case with LightTable).

{% include Layouts/clear.html %}

### PCLinuxOS
{% include Links/image.html os="PCLinuxOS_20170113.png" width="600px" float="left" description="PCLinuxOS's default KDE Plasma 4 user interface" %}
[**PCLinuxOS**](http://www.pclinuxos.com/) is a distribution that is probably best suited to beginners that likely will not need user support, but do want/need out-of-the-box Broadcom WiFi support. I say it is best for those that likely do not need user support, because I personally suspect (but cannot be certain as I have only used it once) that its online support is probably lousy, in terms of response times. This is because I have used their IRC channel before, and asked a question there, and there were only nine people in the channel besides myself and none of them provided me an answer in the over five hours I was there.

{% include Layouts/clear.html %}

### Ubuntu
{% include Links/image.html os="Ubuntu_16.10.png" width="600px" float="left" description="Ubuntu 16.10's Unity user interface" %}
**Ubuntu** and its official flavours (like Kubuntu, Lubuntu, Ubuntu Budgie, Ubuntu GNOME, Ubuntu Kylin, Ubuntu MATE and Xubuntu) are best for users that do not want/need out-of-the-box Broadcom wireless support, but may want/need it later on, as the `bcmwl-kernel-source` package in Ubuntu's official repositories can be installed in order to provide one with Broadcom WiFi support. Ubuntu's online support is probably superior to that of the other Linux distributions mentioned here. 

{% include Layouts/clear.html %}

### Zorin OS
{% include Links/image.html os="Zorin_OS_12_Core.png" width="600px" float="left" description="Zorin OS's customized GNOME desktop" %}

**Zorin OS** is ideal for users that like Windows 7's desktop layout, but have a need for out-of-the-box Broadcom wireless support (so those with laptops with Broadcom WiFi chips). Zorin OS has a paid edition too, and for all I know free users may get inferior support compared to their paid counterparts. Its releases are built on long-term support (LTS) releases of Ubuntu. By default, Zorin OS has the official repositories of the LTS Ubuntu release it is built on, enabled. So any software you can get on Ubuntu's LTS releases you can get on Zorin OS. Zorin's Windows 7-like user interface is a customized version of GNOME, so it is fairly heavy on system resources. 

{% include Layouts/clear.html %}