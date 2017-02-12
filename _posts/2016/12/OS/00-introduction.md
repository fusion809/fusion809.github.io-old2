I have used quite a few free operating systems and I decided to create a more detailed comparison of a few more popular or major free operating systems, including:

{% include_relative includes/list.html %}

Now to be clear, what I mean by "free" is free of monetary cost to the end user, I am not referring to the [Free Software Foundation][1] (FSF)'s definition of "free".

## FAQs
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

For a list of further, presently maintained operating systems that are designed to run on older computers see [this *DistroWatch* search][9].

### Question 2
**Question:** Which free operating system is best suited to a developer? 

**Answer:** Developers are people too, so inevitably there will not be one single distribution that is best for every developer. Fedora is specifically designed for software developers, especially those with a preference for open-source software. Linus Torvalds even uses this Linux distribution while working on the Linux kernel. Some developers will want a more stable distribution (that way, they can spend more time on their work, as opposed to filing bug reports and otherwise spending time on system maintenance), especially those with vast repositories (so that they can more easily get whatever software they want), for those developers the following distributions may be best: CentOS, Debian, Ubuntu (LTS) and derivatives thereof (like elementary OS, Linux Mint, Q4OS, Zorin OS, *etc.*). Likewise others will want a highly configurable operating system in which case they may want: Arch Linux, FreeBSD, Gentoo Linux, Sabayon Linux or Slackware. 

### Question 3
**Question:** What is so important about out-of-the-box FUSE support? (Hence why did I include it in my infoboxes?)

**Answer**: FUSE is used for easily mounting file systems without root privileges. It is useful for a few things, including running AppImages (the cross-distribution packaging formats).

### Question 4
**Question:** What is the relevance of the default file system of operating systems? 

**Answer:** File systems are relevant for a few different reasons. The main reason is that the [Btrfs][10] file system used by openSUSE allows for snapshots of the operating system to be taken, that one can rollback to if the operating system becomes unusable later. This can be incredibly handy, especially when one is using openSUSE Tumbleweed which I have found incredibly easy to inadvertently break, rendering it unusable. 
