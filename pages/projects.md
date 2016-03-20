---
layout:           page
title:            "Projects"
date:             2016-02-13 +1000
last_modified_at: 2016-02-13 20:57:31 +1000
permalink:        /projects/
---

While I would not consider myself a programmer *per se*, I do develop and maintain packages for the Linux distributions I am particularly fond of. Before I proceed I will define OBS as an acronym for Open Build Service. These distributions I am particularly fond of, include:

* **Arch Linux** / **Manjaro Linux** &mdash; you can find these packages [here at the AUR](https://aur.archlinux.org/packages/?SeB=m&K=fusion809) and [here at the fusion809/PKGBUILDs repository](https://github.com/fusion809/PKGBUILDs). I also maintain some in my [Arch_Extra OBS Project](https://build.opensuse.org/project/show/home:fusion809/).
* **Gentoo Linux** / **Sabayon Linux** &mdash; you can find these packages here in my overlay, [`sabayon-tools`](https://github.com/fusion809/sabayon-tools).
* **openSUSE Leap 42.1** / **Tumbleweed** &mdash; you can find these packages here at my [OBS Project](https://build.opensuse.org/project/show/home:fusion809/).

I also maintain several GitHub repositories of shell scripts which I use on a variety of different Linux distributions to automate package management and other tasks. They are listed below; the legend is that a Q superscript denotes that this repo has a quick-install script (for quick deployment), while a Z superscript denotes that this repo also has support for the Zsh Unix shell.

* [`arch-scripts`](https://github.com/fusion809/arch-scripts)<sup>Q,Z</sup> &mdash; scripts for distributions that use the pacman package manager, such as Arch Linux / Frugalware Linux / KaOS / Manjaro Linux.
* [`centos-scripts`](https://github.com/fusion809/centos-scripts) &mdash; scripts for distributions that use the yum package manager, such as CentOS and Scientific Linux.
* [`debian-scripts`](https://github.com/fusion809/debian-scripts) &mdash; scripts for distributions that use APT or APT-RPM, such as Debian and PCLinuxOS, respectively.
* [`fedora-scripts`](https://github.com/fusion809/fedora-scripts)<sup>Q,Z</sup> &mdash; scripts for Fedora-based distributions that have started using the DNF package manager.
* [`gentoo-scripts`](https://github.com/fusion809/gentoo-scripts)<sup>Q,Z</sup> &mdash; scripts for Gentoo-based distributions that use the Portage package manager, including Calculate, Frugalware and Gentoo Linux.
* [`mageia-scripts`](https://github.com/fusion809/mageia-scripts) &mdash; scripts for distributions that use the urpmi package manager, including Mageia and OpenMandriva.
* [`opensuse-scripts`](https://github.com/fusion809/opensuse-scripts)<sup>Q,Z</sup> &mdash; scripts for distributions that use the ZYpp package manager like openSUSE.
* [`sabayon-scripts`](https://github.com/fusion809/sabayon-scripts)<sup>Q,Z</sup> &mdash; scripts for distributions that use the Entropy package manager, such as Sabayon Linux and Spike.

## Arch Linux Packages
The **Arch Linux Packages** (**ALPs**) I develop or maintain are found in three locations, although some packages can be found in more than one of these locations. These locations are:

* [Arch User Repository](https://aur.archlinux.org/packages/?SeB=m&K=fusion809)
* [GitHub PKGBUILDs Repository](https://github.com/fusion809/PKGBUILDs)
* [My Arch_Extra OBS Project](https://build.opensuse.org/project/show/home:fusion809:arch_extra/)

## Gentoo / Sabayon Packages
They are stored in [`sabayon-tools`](https://github.com/fusion809/sabayon-tools), I use Docker to main this overlay, and I am afraid some packages in it inadvertently fall through the cracks.

## openSUSE
They are stored in one of two locations:

* [GitHub rpmbuild Repository](https://github.com/fusion809/) &mdash; I only store packages here that require an Internet connection during the build. For example, an `atom` and `atom-beta` package.
* [My OBS Project](https://build.opensuse.org/project/show/home:fusion809/)
