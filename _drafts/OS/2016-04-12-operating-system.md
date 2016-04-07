---
layout:        post
title:         "Which free operating system is best for me?"
date:          2016-04-12 +1000
categories:    operating-systems, linux, freebsd
permalink:     /free-operating-system/
---

As soon as you enter the FOSS world, you will likely want to start off by switching your operating system (OS) from a proprietary one to a more free and open-source one. I have written posts similar to this one before, but this one I plan on making more comprehensive. I will compare the various free operating systems I have sufficient experience with to review. It is worthwhile noting that many of these operating systems are not 100% free and open-source (such operating systems are said to be *libre*), rather they are predominantly free and open-source in terms of the software that comes installed on them, by default, and cost the end-user nothing to legally attain and use.

## Ratings
{% include Layouts/notei.md note1="I will use the term &ldquo;1-5&rdquo; to refer to characteristics that will be rated on a scale of 1 to 5. A rating of 1 indicates that this property is absent or poor. 5 indicates that this feature is a strong point of this OS." note2="I will also provide acronyms for each question, to be used to save space in the &ldquo;Ratings&rdquo; subsection of each OS section. These acronyms will only be applicable in these Ratings subsections, elsewhere the **PMS** acronym may be used for package management system." %}
Each operating system will be rated with respect to the following characteristics:

* How beginner-friendly is this OS? (**BFO**) 1-5.
* How comprehensive, extensive, easy-to-find and easy-to-understand is the available documentation for this OS? (**CED**) 1-5.
* How easy is package development for this OS? (**EPD**) 1-5.
* How free and open-source is this system? (**FOS**) 1-5. 5 indicates that it satisfies the Free Software Foundation's definition of a **free operating system**. 4 indicates that its official repositories are entirely FOSS, but it may have binary blobs still attached to its kernel.
* How comprehensive are its official software repositories? (**OSR**) 1-5.
* How out-of-the-box is this system? (**OTB**) 1-5.
* How easy is package manager on this system? (**PMS**) 1-5.
* On which side of the spectrum of stability vs. bleeding edge software does this OS lie? (**SBE**) 1-5.
* How comprehensive and easy-to-find are unofficial software repositories? (**USR**) 1-5.

## Arch Linux
**Arch Linux** is a Linux distribution that's development was started by Canadian programmer, Judd Vinet, in early 2001. Arch's first public release, however, was in March 2002. Vinet wanted to develop a system with the minimalism and simplicity of FreeBSD, Slackware and other barebones-type operating systems available at the time, but with a more simple package management system (PMS) than these existing systems. This PMS was and is still called **pacman**, it is written in C and is quite easily the fastest package manager mentioned in this post. pacman is a binary package manager, unlike the default package managers of FreeBSD and Gentoo Linux which are two other popular barebones free operating systems. This makes setting up an Arch Linux system faster and its maintenance easier.

Arch Linux is compatible with i686 and x86_64 architectures and is mostly used by software developers and other more technologically-advanced users. This is because many less technologically-advanced users will not be able to set up an Arch Linux system from the command-line. Arch Linux, like Gentoo Linux, follows a rolling release model (RRM), meaning one never has to upgrade to a new version of the system, rather one merely runs one's package manager. Arch Linux
