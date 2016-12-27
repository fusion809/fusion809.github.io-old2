## Sabayon Linux
{% include_relative infoboxes/13-sabayon.html %}

[**Sabayon Linux**](https://www.sabayon.org/) is a beginner-friendly Linux distribution that is donation-sponsored and developed by a team of volunteer developers. It is derived from Gentoo Linux and shares its package manager, along with its own binary package manager, Entropy. All packages installed with Entropy were originally built using Portage's `ebuild` command. 

Sabayon was founded in 2005 by Fabio Erculiani, an Italian software engineer, as an out-of-the-box Gentoo derivative. Later in 2008 he started working on a binary package manager for Sabayon, that like Gentoo's package manager Portage, was written in Python and Shell script. Its first stable release was in 2011. Erculiani remains the sole maintainer of the Entropy package manager, periodically tagging new releases from its [GitHub repository](https://github.com/Sabayon/entropy). Entropy has two available front-ends: a command-line one (Equo) and a graphical one (Rigo). Equo is one of the slowest command-line binary Linux package managers available, probably because it is written in an interpreted language namely Python which is inherently slower than the equivalent package manager written in compiled languages like C. 

Sabayon is a very out-of-the-box Linux distribution with support for Broadcom wireless. It aims to be on the bleeding-edge but it is more conservative (that is, it is closer to the stable side of the spectrum) than the more truly "bleeding-edge" distributions like Arch Linux and Gentoo Linux. For example, it still uses Xorg 1.18.4 at the time of writing, when Xorg 1.19.0 has been out for over a month (see the infobox for more packages that are rather out-of-date for a bleeding-edge distro). Its pieces of application software (e.g., CodeLite, Eclipse, *etc.*) that are not part of an included desktop environment's core application suite, tend to lag behind too, as there were only two people maintaining its repositories last time I asked (which was only a few months ago). Its choice of web browser to ship with is also unusual. Most distributions ship with an open-source web browser like Firefox, while Sabayon ships with Google Chrome, a proprietary web browser. 

Entropy's repositories are not super-comprehensive, in-my-opinion, which is not surprising given there's only two people maintaining its official repositories. Several pieces of software are missing from them, especially mathematics/proprietary pieces of software such as RuneScape's NXT Client, SageMath and Scilab. I personally have not used them, but I hear that Sabayon has recently added Sabayon Community Repositories (SCR), which may allow users to more easily get the software they want that are not available in the Entropy repositories. 

Sabayon also uses its own custom-branded [kernel sources](https://github.com/Sabayon/kernel) ([`sys-kernel/sabayon-sources`](https://github.com/Sabayon/sabayon-distro/tree/master/sys-kernel/sabayon-sources)) that Erculiani maintains. Several different supported versions of the Linux kernel are in their official repositories and can be installed with Entropy.

Sabayon uses its own custom branded version of the Calamares installer, although it used to (circa mid 2015) use a re-branded version of Fedora's Anaconda installer. It was abandoned, in favour of Sabayon's present Calamares installer, due to its perceived propensity for bugs. 

Ideal Sabayon users are those that:

* Enjoying using a beginner-friendly distribution.
* Like having the freedom to customize one's distribution, but not having to (as doing so can be quite tedious and, at times, frustrating), if one is happy with Sabayon's defaults. One can theoretically create an entirely custom Sabayon installation by using the Spinbase edition of Sabayon and setting up everything from the ground-up. 
* Want a fairly bleeding-edge but still rather stable distribution.
* Do not require any obscure/insufficiently popular (among Sabayon users/developers at least, as otherwise they would be in the Entropy repositories) pieces of software like RuneScape's NXT Client, SageMath or Scilab, or if one does are willing to and able to build and install said packages using Portage. 
* Do not mind having a fairly slow package manager. I personally find using Entropy annoying at times because when one has several packages upgrades to get it can take well over half an hour to download and install them. 
* Do not have any qualms using a distribution that is not entirely open-source. 

{% include Layouts/clear.html %}
