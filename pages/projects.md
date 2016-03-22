---
layout:           page
title:            "Projects"
date:             2016-02-13 +1000
last_modified_at: 2016-03-22 16:52:28 +1000
permalink:        /projects/
---

While I would not consider myself a programmer *per se*, I do develop and maintain packages for the Linux distributions I am particularly fond of. Before I proceed I will define OBS as an acronym for the Open Build Service. I also use GitHub as a free data storage service for sets of files of a smaller total size than I would use DropBox / Google Drive to store. GitHub also has the advantage of making it easier to share my files and get feedback (like improvement suggestions) on.

## ISO Repositories
In the following repositories I have files used to generate ISO (CD/DVD/USB image) files for the respective distribution mentioned.

* {% include Links/fusgr.md repo="archiso" %} &mdash; as you can probably guess this is for creating an ISO for Arch Linux. This ISO is distinct from the official ISO in that it has out-of-the-box support for Broadcom Wi-Fi chips. To connect to the Wi-Fi in this ISO's live session run `wifi-menu -o`, select your network and enter any necessary information, like its passphrase, run `netctl list` to show available networks and run `netctl status $network` to connect to a network. Last time I built an ISO from it (19 March 2016) it worked as expected with out-of-the-box support for my Broadcom chip.
* {% include Links/fusgr.md repo="fedora-ISO" %} &mdash; this is for creating an ISO for Fedora, that I hope will have out-of-the-box Broadcom Wireless support. It is a work in progress and still does not have out-of-the-box Broadcom Wireless support, if you would like to help me with this see [this question](https://ask.fedoraproject.org/en/question/83250/how-do-i-create-a-fedora-23-iso-with-broadcom-wl-preinstalled/) at Ask Fedora.

## Package Development

### Arch Linux
The **Arch Linux Packages** (**ALPs**) I develop or maintain are found in three locations, although some packages can be found in more than one of these locations. These locations are:

* [Arch User Repository](https://aur.archlinux.org/packages/?SeB=m&K=fusion809)
* My {% include Links/fusgr.md repo="PKGBUILDs" %} GitHub repository.
* {% include Links/obs.md project="home:fusion809:arch_extra" name="My Arch_Extra OBS Project" %}

### Gentoo / Sabayon Linux
They are stored in {% include Links/fusgr.md repo="sabayon-tools" puncr="," %} I use Docker to main this overlay, and I am afraid some packages in it inadvertently fall through the cracks.

### Fedora / openSUSE
They are stored in one of two locations:

* My {% include Links/fusgr.md repo="rpmbuild" %} GitHub repository &mdash; I only store packages here that require an Internet connection during the build. For example, an `atom` and `atom-beta` package. The RPMs contained therein are only designed to compatible with openSUSE, so they may not work on Fedora.
* [My Home OBS Project](https://build.opensuse.org/project/show/home:fusion809/). This contains packages that are built for both Fedora and openSUSE.
* [My openSUSE OBS Project](https://build.opensuse.org/project/show/home:fusion809:opensuse/). This contains packages that are built for openSUSE only.

## Preference Repositories
The following repositories contain my application preferences, usually stored in config files. I store them here, as sort of a more public equivalent to a DropBox or Google Drive, in case of the relatively frequent occurrence of me changing distributions.

* {% include Links/fusgr.md repo="atom" %} &mdash; pretty self-explanatory, this repo contains some of the more important files I have stored in `~/.atom`, which contain my Atom preferences.
* {% include Links/fusgr.md repo="spacemacs" %} &mdash; my `~/.spacemacs` file, which contains all my [Spacemacs](https://github.com/syl20bnr/spacemacs) preferences.
* {% include Links/fusgr.md repo="vim" %} &mdash; my `.vimrc` file, which contains my Vim preferences.

## Shell Scripts
I also maintain several GitHub repositories of shell scripts which I use on a variety of different Linux distributions to automate package management and other tasks. They are listed below; the legend is that a Q superscript denotes that this repo has a quick-install script (for quick deployment), while a Z superscript denotes that this repo also has support for the Zsh Unix shell.

* {% include Links/fusgr.md repo="arch-scripts" sup="Q,Z" %} &mdash; scripts for distributions that use the pacman package manager, such as Arch Linux / Frugalware Linux / KaOS / Manjaro Linux.
* {% include Links/fusgr.md repo="centos-scripts" %} &mdash; scripts for distributions that use the yum package manager, such as CentOS and Scientific Linux.
* {% include Links/fusgr.md repo="debian-scripts" %} &mdash; scripts for distributions that use the APT or APT-RPM package managers, such as Debian and PCLinuxOS, respectively.
* {% include Links/fusgr.md repo="fedora-scripts" sup="Q,Z" %} &mdash; scripts for Fedora-based distributions that have started using the DNF package manager.
* {% include Links/fusgr.md repo="gentoo-scripts" sup="Q,Z" %} &mdash; scripts for Gentoo-based distributions that use the Portage package manager, including Calculate, Frugalware and Gentoo Linux.
* {% include Links/fusgr.md repo="mageia-scripts" %} &mdash; scripts for distributions that use the urpmi package manager, including Mageia and OpenMandriva.
* {% include Links/fusgr.md repo="opensuse-scripts" sup="Q,Z" %} &mdash; scripts for distributions that use the ZYpp package manager like openSUSE.
* {% include Links/fusgr.md repo="sabayon-scripts" sup="Q,Z" %} &mdash; scripts for distributions that use the Entropy package manager, such as Sabayon Linux and Spike.
