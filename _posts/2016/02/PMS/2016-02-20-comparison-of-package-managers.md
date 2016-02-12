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
* [**Dandified Yum**](#dnf) (**DNF**), the default package manager of Fedora &geq;22 and its up-to-date derivatives (e.g., Chapeau and Korora) and the successor to yum.
* [**Entropy**](#entropy), the default package manager of Sabayon Linux.
* [**pacman**](#pacman), the default package manager of Arch Linux and its derivatives.
* [**Portage**](#portage), the package manager of Gentoo Linux and its derivatives such as Calculate and Sabayon.
* [**urpmi**](#urpmi), the default package manager of Mageia and other Mandriva derivatives.
* [**Yellowdog Updater, Modified**](#yum) (**yum**), the default package manager of CentOS, Fedora &leq;21 and the predecessor of yum.
* [**ZYpp**](#zypp) (**zypper**), the default package manager of openSUSE and its derivatives.

with respect to the following areas:

* **Beginner-friendliness**. Does it have an easy to understand and remember syntax? Does it have a high-quality of documentation? Does it have an officially-supported graphical user interface? If so, is this GUI intuitive and easy to use?
* **Customizability**. How much customization of installed packages and the options for this package manager are allowed?
* **Development**: How easy is developing packages for this package manager?
* **Features**. Does this package manager allow users to abbreviate commands? Does it allow users to skip confirmation checks? Does it include search functions? Does it show users detailed information about the packages when asked? Does it support local installs? Finally can it install packages from a specified URL? Does it support installing the dependencies of a target package only? (e.g., `apt-get build-dep`) Does it support installation from source code and binary packages?
* **Speed**. This is something that will be based on research, along with one test. The test is I will reinstall the vim package (reinstalling so to ensure the time measured is only the time taken to install the package and not the time to download the package, download and install its dependencies, *etc.*) on a Virtual machine for the original user of the package manager in question. This process I will time using the `time` command. For example, for pacman I ran: {% include Code/coders.html line1="time pacman -S vim --noconfirm" %}.

## APT
The [**Advanced Packaging Tool**](https://wiki.debian.org/Apt) (**APT**) is the default front-end for the dpkg package manager used by Debian-based systems. See what APT does is it performs dependency resolution, repository management, and assorted other higher-level functions while dpkg is what actually installs and removes packages. So in essence what APT does for dpkg is it gives it some intelligence; package management with dpkg by itself is not an experience I would like to have as you would have to do just about everything yourself. It is the eldest package manager mentioned in this review and was first developed in 1998, while dpkg was first developed in 1994. APT is written in Bash script and C++, while dpkg is written in C, C++ and Perl.

APT was the first Linux package manager I ever used and I started using it on Ubuntu, so I may be biased towards saying it is beginner-friendly, although I will admit I think there are more beginner-friendly package managers out there, like [DNF](#dnf), [yum](#yum) and [zypper](#zypp). See APT has a somewhat confusing syntax, as you do not just run {% include Code/coders.html line1="apt [<i>action</i>] [option(s)] [<b>target</b>(<b>s</b>)]" %}, rather there are five distinct commands for APT: [`add-apt-repository`](/man/add-apt-repository.1.html), [`apt`](/man/apt.8.html), [`apt-cache`](/man/apt-cache.8.html), [`apt-config`](/man/apt-config.8.html) and [`apt-get`](/man/apt-get.8.html). `apt-get` is used to install, remove and upgrade packages and update local index files for enabled repositories. `apt-cache` is for searching and dealing with the cache and metadata in it. `add-apt-repository` is used for managing repositories, while `apt-config` is for editing configuration files from the command-line. `apt` itself, on the other hand, seems to be capable of performing select actions from `apt-cache`, `apt-get` and `apt-config`.

{% include_relative APT/table-1-basic-usage-examples.html %}

APT, by default, installs binary packages, with the file extension `.deb`, although an RPM rewrite for APT exists called APT-RPM that uses binary packages with the `.rpm` file extension. APT-RPM is only used by one Linux distribution I have personal experience with, PCLinuxOS and I have personally noticed no syntactic, performance or other difference between it and APT, based on my limited experience with it.

## pacman
From {% include Code/coders.html line1="time pacman -S vim --noconfirm" directory="/home/fusion809" %} I got the output:

~~~
warning: vim-7.4.1294-1 is up to date -- reinstalling
resolving dependencies...
looking for conflicting packages...

Packages (1) vim-7.4.1294-1

Total Installed Size:  2.70 MiB
Net Upgrade Size:      0.00 MiB

:: Proceed with installation? [Y/n]
(1/1) checking keys in keyring                     [######################] 100%
(1/1) checking package integrity                   [######################] 100%
(1/1) loading package files                        [######################] 100%
(1/1) checking for file conflicts                  [######################] 100%
(1/1) checking available disk space                [######################] 100%
:: Processing package changes...
(1/1) reinstalling vim                             [######################] 100%

real	0m0.464s
user	0m0.227s
sys	0m0.067s
~~~

## ZYpp
`time zypper in -y --force vim`

~~~
Warning: Legacy commandline option -y/--no-confirm detected. Please use global option -n/--non-interactive instead.
Loading repository data...
Reading installed packages...
Forcing installation of 'vim-7.4.1194-1.1.x86_64' from repository 'openSUSE-Tumbleweed-Oss'.
Resolving package dependencies...

The following package is going to be reinstalled:
  vim

1 package to reinstall.
Overall download size: 1.3 MiB. Already cached: 0 B. No additional space will be
used or freed after the operation.
Continue? [y/n/? shows all options] (y): y
Retrieving package vim-7.4.1194-1.1.x86_64 (1/1),   1.3 MiB (  2.8 MiB unpacked)
Retrieving: vim-7.4.1194-1.1.x86_64.rpm ....................[done (454.9 KiB/s)]
Checking for file conflicts: .............................................[done]
(1/1) Installing: vim-7.4.1194-1.1 .......................................[done]

real	0m20.312s
user	0m1.652s
sys	0m0.544s
~~~
