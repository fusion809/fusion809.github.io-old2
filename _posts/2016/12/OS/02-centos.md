## CentOS
{% include_relative infoboxes/02-centos.html %}

[**CentOS**](https://www.centos.org/) is a free enterprise Linux distribution that uses the RPM/yum package manager. RPM is written in C and Perl, while yum is written in Python. yum is one of the slowest Linux binary package managers I am aware of, significantly slower than APT and pacman, both of which are mostly written in lower-level compiled languages namely C++ and C, respectively. It is likely that sometime in the near future CentOS will adopt the DNF package manager that Fedora has been using since mid 2015.

CentOS is essentially like a more stable, yet old (in terms of how up-to-date its software is) version of Fedora. I have used it for about year in [VirtualBox](https://en.wikipedia.org/wiki/VirtualBox) VMs. I have found it very stable, but its software is so out-of-date that it can sometimes be a deal-breaker. For example, I have used CentOS Docker containers to compile software from source code so I can build an [AppImage](http://appimage.org) for them. Sometimes the version of GNU Compiler Collection (GCC) is so out-of-date, however, that the compilation fails. This is the case for CentOS 5/6 containers being used to build [GNU Octave](https://en.wikipedia.org/wiki/GNU_Octave) 4.2.0 from source code. CentOS 7 is barely up-to-date enough to compile GNU Octave 4.2.0.

It is unusual in that it does not have out-of-the-box FUSE support, despite being a fairly [out-of-the-box](https://en.wikipedia.org/wiki/Out_of_the_box_(feature)) operating system. Aside from its kernel (which has the proprietary [binary blobs](https://en.wikipedia.org/wiki/Binary_blob) in place) it and all the software in its official repositories is open-source, and it has strict licensing requirements for all of its included software (aside from its kernel, apparently), much like the related distribution, Fedora.

The OBS also has support for building packages for CentOS. As does Fedora's Copr, with the [*Extra Packages for Enterprise Linux*](https://fedoraproject.org/wiki/EPEL) (EPEL) chroots enabled.

Decisions are made by a consensus reached by its own governing board.{% include_relative includes/fn-end.html no="5" %}

Ideal CentOS users are at least intermediate-level users (so not beginners, unless they are fast learners) that:

* Love open-source, but not enough to ditch the standard kernel in favour of the [Linux-libre](https://en.wikipedia.org/wiki/Linux-libre) kernel
* Favour software stability over the very latest software releases.
* Favour a fixed release model distribution over a rolling release model.
* Favour a long-term supported distribution over a distribution with a short support cycle (e.g., Fedora).
* Do not have a need for any obscure pieces of software, that is, software that is not universally found in virtually every Linux distribution's repositories. CentOS tends to have more comprehensive repositories than Mageia (if one includes EPEL repositories), but less comprehensive repositories than Arch Linux or Fedora.
* Use CentOS or Red Hat Enterprise Linux at work. CentOS and RHEL are very similar (or so I am told, I have never used RHEL myself as it is a paid product and I refuse to pay for operating systems).

{% include Layouts/clear.html %}
