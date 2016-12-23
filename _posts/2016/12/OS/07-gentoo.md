## Gentoo Linux
{% include_relative infoboxes/07-gentoo.html %}

[**Gentoo Linux**](https://www.gentoo.org/) is a Linux distribution that uses its own package manager, Portage, that is so named because it is similar to FreeBSD's Ports system. Portage compiles and installs software by following instructions in a specialized type of shell script known as an ebuild. These ebuilds are stored in repositories that are usually git-controlled and are referred to as overlays. The official Gentoo overlay is also known as the Portage Tree and is stored on a Gentoo system in the `/usr/portage` directory. Unofficial overlays are installed via the official tool (that is, it is developed by the Gentoo Linux development team) `layman` to `/var/lib/layman`. 

ebuilds usually include USE flag and keyword fields. USE flags are essentially options that determine which features of the package provided by the ebuild are built and which are not. For example, the `gtk` USE flag, if enabled, would cause one's packages to be built with GTK widget toolkit support. Likewise keywords tell one the stability of the ebuild on the various processor architectures Gentoo has been ported to. For example, the `amd64` keyword means that the ebuild is stable (and well-tested) on AMD64 (or x86-64) platforms. Likewise the `~x86` keyword means that the ebuild is unstable on x86 (or 32-bit systems). 

{% include Layouts/clear.html %}
