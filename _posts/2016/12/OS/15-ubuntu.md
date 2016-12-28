## Ubuntu
{% include_relative infoboxes/15-ubuntu.html %}

[**Ubuntu**](https://www.ubuntu.com/) is a beginner-friendly Linux distribution developed by a community of volunteers, along with Canonical Ltd employees and that is sponsored by Canonical Ltd. Canonical Ltd. is a company founded and funded by Mark Shuttleworth, a South African entrepeneur and astronaut. He also leads the development of Ubuntu, although the community of volunteer developers also has a say in its development. Shuttleworth was a volunteer contributor to the Debian operating system in the 1990s and when he created the Ubuntu operating system he decided to base it on Debian. Like Debian Ubuntu uses the APT and dpkg package management systems. It also uses a similar file system layout to that of Debian. Despite being developed by a company Ubuntu is a free product, and Canonical Ltd instead makes its money by selling paid support for Ubuntu to business that use it.

Ubuntu, by default, does not come with any proprietary software that I am aware of, aside from the binary blobs on its kernel. Despite this its official repositories do contain some proprietary drivers like the Broadcom wireless driver. It is designed to be fairly out-of-the-box, but it does not have out-of-the-box support for Broadcom wireless. It also has several different official editions, including:

* [Edubuntu](https://www.edubuntu.org/), which only exists for LTS releases of Ubuntu. It is education-oriented, primarily intended for children.
* [Kubuntu](http://kubuntu.org/) (using KDE)
* [Lubuntu](http://lubuntu.net/) (using LXDE)
* [Ubuntu GNOME](https://ubuntugnome.org/) (using GNOME)
* [Ubuntu Kylin](https://www.ubuntu.com/desktop/ubuntu-kylin), which is intended for Chinese Linux users due to it complying with the Chinese government procurement regulations.
* [Ubuntu MATE](https://ubuntu-mate.org/) (using MATE)
* [Xubuntu](http://xubuntu.org/) (using Xfce)

Ubuntu is oriented towards both desktop and server users, and has even been ported to smartphones and tablets. It has one of the best free online support websites I have ever seen, [Ask Ubuntu](http://askubuntu.com/). It is also unusual in the Linux world in that it has two types of releases, one standard releases which come out every six months and another LTS releases which come out in even-numbered years in April (e.g., April 2012, April 2014, April 2016). Releases are assigned a version number that corresponds to the year and month they were released, so the Ubuntu release that came out in April 2012 was given the version string 12.04, likewise the Ubuntu release that came out in October 2016 was called 16.10. They are also given a codename, e.g., 14.04 was called Trusty Tahr and 16.04 was called Xenial Xerus. LTS releases are officially and freely supported for 5 years after they are released, while standard releases are supported for only nine months after their release.

Like Fedora and openSUSE, Ubuntu has its own mechanism by which users can create and disseminate their own custom packages, namely via the Canonical Ltd. owned website [Launchpad](https://launchpad.net/). Repositories setup using this website are called Personal Packaging Archives (PPAs). I personally have managed to setup two working PPAs, one for [Geany](https://launchpad.net/~brentonhorne/+archive/ubuntu/geany2), the lightweight GTK-based IDE, and another for [GNU Octave](https://launchpad.net/~brentonhorne/+archive/ubuntu/octave). I have real difficulties building my own custom Debian packages due to challenges related to writing the packaging source files (like the Debian rules and control files), and I only managed to create these two working PPAs via slightly modifying existing packaging files I found online.

Canonical Ltd has a reputation in the open-source community, of not collaborating with upstream projects on their solutions (to problems facing the open-source community) and instead substituting their own. This has lead to some anger in open-source circles. For example, instead of collaborating on the development of the [Wayland](https://en.wikipedia.org/wiki/Wayland_(display_server_protocol)) display protocol as a replacement for the old, deprecated Xorg server, they decided to provide their own replacement, [Mir](https://en.wikipedia.org/wiki/Mir_(software)). Likewise instead of working with upstream projects on their cross-distribution packaging formats (like [AppImages](http://appimage.org/) and [Flatpaks](http://flatpak.org/)) they decided to create their own, [Snaps](http://snapcraft.io/).

Ubuntu is perhaps best for users that:

* Love open-source, but not enough to use a distribution with no proprietary drivers in its official repositories and no binary blobs on its kernel. [Trisquel](https://trisquel.info/) is a Linux distribution based on Ubuntu but with a focus on open-source, with no proprietary software in its repositories and no binary blobs on its kernel.
* Prefer a fixed release cycle over a rolling release model distribution.
* Favour a stable system over a bleeding-edge system.
* Like a distribution that they can use on almost every device.
* Require/want free or paid support, as either option is available and free support is certainly of high quality. I have never used their paid support (as I think it kind of defeats one of the reasons I choose Linux in the first place &mdash; it is free), but I assume it would be superior to the free support available at Ask Ubuntu (as otherwise no one would pay for it) which is pretty good.

{% include Layouts/clear.html %}
