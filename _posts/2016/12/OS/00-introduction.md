I have used quite a few free operating systems and I decided to create a more detailed comparison of a few more popular or major free operating systems, including:

{% include_relative includes/list.html %}

Now to be clear, what I mean by "free" is free of monetary cost to the end user, I am not referring to the [Free Software Foundation][1] (FSF)'s definition of "free".

## Frequently-Asked Questions (FAQs)
This section covers some common questions I expect to arise from this post. 

### Question 1
**Question:** Which free operating system is best for an old computer?

**Answer:** Well, one has to account for personal preference and that there is, of course, some variation in what constitutes an old computer, but the following distributions are likely the best for most users operating on old hardware:

* [antiX][2] &mdash; a Greek Debian (stable) derivative that uses the IceWM window manager as its default user interface.
* [Bodhi Linux][3] &mdash; a Ubuntu LTS derivative that uses the Moksha window manager (a fork of the Enlightenment window manager) and ships with only four pre-installed applications.
* [LXLE][4] &mdash; a Ubuntu LTS derivative that uses the lightweight LXDE desktop environment by default.
* [Lubuntu][5] &mdash; the one I would be recommending for most users, especially beginners. It is an official Ubuntu derivative and uses the lightweight LXDE desktop environment.
* [Puppy Linux][6] &mdash; an Australian distribution that I have never managed to install in a VirtualBox VM due to graphics and mouse issues. I have never tried to install it onto my hard disk, so I have no idea how it runs on an actual machine (as opposed to a VirtualBox VM). 
* [Quirky Linux][7] &mdash; a Puppy Linux-derived distribution, that I have also failed to install in VirtualBox VMs. 
* [ReactOS][8] &mdash; a Russian open-source, binary-compatible clone of Microsoft Windows NT. Its aesthetics most closely resemble those of Windows 2000 or XP. Most binaries built for Windows XP are compatible with ReactOS.  

For a list of further, presently-maintained operating systems that are designed to run on older computers see [this *DistroWatch* search][9].

### Question 2
**Question:** Which free operating system is best suited to a developer? 

**Answer:** Developers are people too, so inevitably there will not be one single distribution that is best for every developer. Fedora is specifically designed for software developers, especially those with a preference for open-source software. Linus Torvalds even uses this Linux distribution while working on the Linux kernel. Some developers will want a more stable distribution (that way, they can spend more time on their work, as opposed to filing bug reports and otherwise spending time on system maintenance), especially those with vast repositories (so that they can more easily get whatever software they want), for those developers the following distributions may be best: CentOS, Debian, Ubuntu (LTS) and derivatives thereof (like elementary OS, Linux Mint, Q4OS, Zorin OS, *etc.*). Likewise others will want a highly configurable operating system in which case they may want: Arch Linux, FreeBSD, Gentoo Linux, Sabayon Linux or Slackware. 

### Question 3
**Question:** What is so important about out-of-the-box FUSE support? (Hence why did I include it in my infoboxes?)

**Answer**: FUSE is used for easily mounting file systems without root privileges. It is useful for a few things, including running AppImages (the cross-distribution packaging formats).

### Question 4
**Question:** What is the relevance of the default file system of operating systems? 

**Answer:** File systems are relevant for a few different reasons. The main reason is that the [Btrfs][10] file system used by openSUSE allows for snapshots of the operating system to be taken, that one can rollback to if the operating system becomes unusable later. This can be incredibly handy, especially when one is using openSUSE Tumbleweed which I have found incredibly easy to inadvertently break, rendering it unusable. 

## Package Managers
In this section I will briefly review the key characteristics of the package managers of the operating systems reviewed in this post.

### Debian Package Management
**dpkg** and its higher-level official front-end **APT** are used extensively by Debian-based operating systems. dpkg was initially developed in the early-mid 1990s by Ian Murdock and a few other members of a fairly small development team. Originally it was written predominantly in Perl, but it was later rewritten in C. APT's development began in the mid-late 1990s and it was and still is written predominantly in C++, with most of the remaining code being written in Shell. When installing a package that has already been downloaded (and placed in the cache) the APT/dpkg combination installs packages fairly fast, although slower than pacman and ZYpp do. 

Debian packages are built using a tool called debuild, which uses the contents of a specialized folder usually named `debian`, along with the upstream source code, to construct the Debian package. 

### Entropy
**Entropy**, which is used by Sabayon Linux and its derivatives (like Spike Pentesting), is the fastest binary package manager mentioned in this post that is written in an interpreted language. Packages installed with Entropy were originally built using Portage and then converted from a Portage binary package to an Entropy binary package using Entropy itself. 

### pacman
**pacman**, which is used by Arch Linux-based distributions as well as the &ldquo;independent&rdquo; (using quotation marks as I think the mere fact these distros use pacman as their package manager suggests they are not *truly* independent) distributions Frugalware and KaOS. pacman is the single fastest package manager mentioned in this review and it is written predominantly in C and to a lesser extent Python and Shell. 

The `pacman` package on Arch Linux and derived distributions usually includes a utility called `makepkg` for building packages. `makepkg` is a shell script that takes a specialized type of shell script known as a PKGBUILD (which always have that exact filename), along with other source files (like the upstream sources) and produces a package that can be installed using pacman. Nowadays most pacman packages have the `.pkg.tar.xz` file extension, although they can have the `.pkg.tar.gz` file extension also. See pacman used to be gz-compressed back when xz-compression was too time and resource-expensive but nowadays the packages in the official Arch Linux repositories (and the official repositories of most of its derivative distributions) are all xz-compressed (as they usually have better compression and hence take up less disk space). 

### pkgtools
**pkgtools** is the official, default package management system of Slackware and a few of its derivatives. It is unusual among Linux package managers in that it serves only low-level functions (like installing packages, removing them and upgrading) and has no official, default front-end for carrying out more high-level functions (such as repository management, download management, dependency resolution, *etc.*). It does have an unofficial front-end for package management, slapt-get, that is quite popular but does not come pre-installed with Slackware. Packages that pkgtools can install are built using a type of specialized shell script known as a SlackBuild.

### Portage
**Portage**, which is used by Gentoo Linux-based distributions and is written in Python and Shell. It is the only source code Linux package management system mentioned in this review, that is, by default it installs software that it manually compiles from source code, as opposed to most Linux package managers which install software from pre-compiled binary packages. Portage works with ebuilds, a type of specialized shell script that Portage command can read, compile software packages and install them by following the instructions contained therein.

### RPM
**RPM** and its higher-level front-ends **APT-RPM**, **DNF**, **urpmi**, **yum** and **ZYpp**. Used by Red Hat, SUSE and Mandriva-based distributions. RPM originally stood for Red Hat Package Manager but now it is a recursive acronym (so it stands for RPM package manager). RPM is written predominantly in C, with most of the remainder of its code being made up of Perl and Shell. RPM itself is fairly fast, although some of its most popular front-ends, DNF, urpmi and yum are written in interpreted languages namely Perl and Python and so inherently are rather slow. RPM packages are built using the rpmbuild command and they require a special file directory layout in order for their build to succeed. The most important file for building RPM packages is the so called spec file which is similar in its syntax to shell but with several &ldquo;macros&rdquo; one can use to simplify building tasks. 

RPM is unique among lower-level package managers in that it can download RPM files and install them itself. For example, running:

{% include Code/coder.html line1="rpm -i https://github.com/atom/atom/releases/download/v1.14.2/atom.x86_64.rpm" %}

should, provided there are no missing dependencies, download the atom.x86_64.rpm file from https://github.com/atom/atom/releases/download/v1.14.2/atom.x86_64.rpm and then install it with RPM. It also keeps track of required and provided libraries for each RPM package. 
