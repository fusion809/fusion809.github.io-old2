## FreeBSD
{% include_relative infoboxes/06-freebsd.html %}

[**FreeBSD**](https://www.freebsd.org/) is the only operating system included in this comparison that is not a Linux distribution, rather it is a BSD derivative, putting it in the same category as DragonFlyBSD, NetBSD and OpenBSD. It is developed by a group of some 500 developers (or committers), most of whom are unpaid volunteers, although some are paid to contribute to it by their respective business. Among these developers a "core team" of 9 are selected by the FreeBSD committer community and given special authority to act on the behalf of the FreeBSD project to set and enforce project rules, approve (or reject) new FreeBSD committers, granting them subversion (SVN) access and setting direction for the FreeBSD project. FreeBSD packages can be built from source code, with custom configure options set using the Ports system, or installed from pre-installed binaries using the `pkg` binary package manager.

FreeBSD is the third eldest operating system mentioned in this post, after Debian and Slackware, and some of its source code has been borrowed to make the [Darwin operating system](https://en.wikipedia.org/wiki/Darwin_(operating_system)), upon which macOS is built. DragonFlyBSD was also [forked](https://en.wikipedia.org/wiki/Fork_(software_development)) from a previous version of FreeBSD. FreeBSD was originally forked from 386BSD, an effort in early 1990s to port the Berkeley Software Distribution (BSD) that was originally developed at the University of California, Berkeley, to the Intel 80386 set of microprocessors. Eventually in November 1993 the first pubic release of FreeBSD was made.

FreeBSD has four major support editions or branches (similar to Debian's branches): the previous stable release (presently the 10.3 release), the present stable release (11.0) and the rolling release editions STABLE (presently 11-STABLE) and CURRENT (presently 12-CURRENT). The CURRENT branch is the bleeding-edge version of FreeBSD and includes developmental releases of the kernel, core utilities and other essential components of the FreeBSD system. It is not recommended for daily use, due to the propensity for serious bugs to arise in it. The STABLE branch is essentially what will become the new minor release of FreeBSD (which given that the present stable release is 11.0, this new minor release would be 11.1), with non-core package updates (that is, excluding kernel and other major system component updates) from CURRENT backported to it, if sufficiently stable.

It is perhaps best suited to use on servers, as its graphical user interface (GUI) support is inferior to that of Linux. Despite this most popular Linux desktop environments and window managers have been ported to FreeBSD and work fairly problem-free on it. In line with it being best suited to being used on servers it also has several pieces of server software in its official repositories, including:

* Apache
* MariaDB
* MySQL
* PostgreSQL

Unlike most Linux distributions FreeBSD has no graphical installer, and rather the installation is performed via a textual installer. In my opinion, however, this installer is fairly easy to use, it should not be a major obstacle in itself to a beginner, provided they have the appropriate help. Despite this I would consider FreeBSD a distribution best suited to intermediate-advanced level users, specifically those that:

* Are at home using the command-line. If using the command-line is a big drama to one odds are FreeBSD will not suite one's needs. Users should be aware that FreeBSD's default shells for root (tcsh) and standard users (sh) are not popular shells on Linux. 
* Are willing to go without several popular pieces of software that run natively on Linux. Examples of such software include Atom, Google Chrome and Spotify.
* Prefer a Unix-like operating system with more unity and harmony between its various components than Linux. Namely one where everything comes from the same team of developers, as opposed to Linux where each component are created by a separate team of developers, each with their own goals and intentions for how their software should be used. 

Many Linux distributions provide (often in an optional, not pre-installed package) FreeBSD's version of tar in their official repositories and call it bsdtar (to distinguish it from GNU tar, the version of tar they use by default). This version of tar is more flexible than GNU tar and can decompress a wider variety of different files. For example, it can also be used to extract Debian and RPM packages. 

{% include Layouts/clear.html %}
