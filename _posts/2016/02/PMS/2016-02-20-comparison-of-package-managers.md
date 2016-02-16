---
layout:         post
title:          "A Comparison of Popular Linux Package Managers"
date:           2016-02-20 +1000
categories:     linux, package-management
redirect_from:  
  - /comparison-of-package-managers/
  - /comparison-of-package-management-systems/
---

As I am sure many of you are aware I have tried over twenty different Linux distributions, many of which use different **package managers** to one another. Each package manager has several different characteristics, all of which influence my decision to use them and hence also my decision to use the respective Linux distribution on which they are used for package management. In this comparison I will compare the following package managers (note, each package manager's long name is hyperlinked to their respective section):

* [**Advanced Packaging Tool**](#apt) (**APT**), the default package manager of Debian and its various derivatives. I will also discuss the related package managers aptitude and Synaptic in this section.
* [**Dandified Yum**](#dnf) (**DNF**), the default package manager of Fedora ≥22 and its up-to-date derivatives (e.g., Chapeau and Korora) and the successor to yum.
* [**Entropy**](#entropy), the default package manager of Sabayon Linux.
* [**pacman**](#pacman), the default package manager of Arch Linux and its derivatives.
* [**Portage**](#portage), the package manager of Gentoo Linux and its derivatives such as Calculate and Sabayon.
* [**urpmi**](#urpmi), the default package manager of Mageia and other Mandriva derivatives.
* [**Yellowdog Updater, Modified**](#yum) (**yum**), the default package manager of CentOS, Fedora ≤21 and the predecessor of yum.
* [**ZYpp**](#zypp) (**zypper**), the default package manager of openSUSE and its derivatives.

with respect to the following areas:

* **Beginner-friendliness**. Does it have an easy to understand and remember syntax? Does it have a high-quality of documentation? Does it have an officially-supported graphical user interface? If so, is this GUI intuitive and easy to use?
* **Customizability**. How much customization of installed packages and the options for this package manager are allowed?
* **Development**: How easy is developing packages for this package manager?
* **Features**. Does this package manager allow users to abbreviate commands? Does it allow users to skip confirmation checks? Does it include search functions? Does it show users detailed information about the packages when asked? Does it support local installs? Finally can it install packages from a specified URL? Does it support installing the dependencies of a target package only? (e.g., `apt-get build-dep`) Does it support installation from source code and binary packages? Does it support wildcards?
* **Speed**. This is something that will be based on research, along with one test. The test is I will reinstall the vim package (reinstalling so to ensure the time measured is only the time taken to install the package and not the time to download the package, download and install its dependencies, *etc.*) on a Virtual machine for the original user of the package manager in question. This process I will time using the `time` command. For example, for pacman I ran: {% include Code/coders.html line1="time pacman -S vim --noconfirm" %}.

{% include_relative APT/apt.md %}

{% include_relative DNF/dnf.md %}

{% include_relative Entropy/entropy.md %}

{% include_relative pacman/pacman.md %}

{% include_relative Portage/portage.md %}

{% include_relative yum/yum.md %}

{% include_relative ZYpp/zypp.md %}

## Footnotes
[1]: http://fedoraproject.org/wiki/How_to_create_an_RPM_package
[^1]: [pacman Home Page](https://www.archlinux.org/pacman/) (2 March 2015). Retrieved 15 February 2016.
