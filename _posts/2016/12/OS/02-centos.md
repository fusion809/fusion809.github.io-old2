## CentOS
{% include_relative infoboxes/02-centos.html %}

[**CentOS**](https://www.centos.org/) is a free enterprise Linux distribution that uses the RPM/yum package manager. It is used as the basis for [Red Hat Enterprise Linux](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux) (RHEL), the premier product of *Red Hat*. CentOS is essentially like a more stable, yet old (in terms of how up-to-date its software is) version of Fedora. I have used it for about year in [VirtualBox](https://en.wikipedia.org/wiki/VirtualBox) VMs. I have found it very stable, but its software is so out-of-date that it can sometimes be a deal-breaker. For example, I have used CentOS Docker containers to compile software from source code so I can build an AppImage for them. Sometimes the version of GCC is so out-of-date, however, that the compilation fails. This is the case for CentOS 5/6 containers being used to build GNU Octave 4.2.0 from source code. It is also unusual in that it does not have out-of-the-box FUSE support, despite being a fairly out-of-the-box operating system. Aside from its kernel (which has the proprietary [binary blobs](https://en.wikipedia.org/wiki/Binary_blob) in place) it and all the software in its official repositories is open-source, and it has strict licensing requirements for all of its included software (aside from its kernel, apparently).

Ideal CentOS users are intermediate-level users (so not beginners, unless they are fast learners) that:

* Love open-source, but not enough to ditch the standard kernel in favour of the Linux-libre kernel
* Favour software stability over the very latest software releases
* Do not have a need for any obscure pieces of software, that is, software that is not universally found in virtually every Linux distribution's repositories. CentOS tends to have more comprehensive repositories than Mageia (if one includes [*Extra Packages for Enterprise Linux*](https://fedoraproject.org/wiki/EPEL) (EPEL) repositories), but less comprehensive repositories than Arch Linux or Fedora.
* Use CentOS or Red Hat Enterprise Linux at work. CentOS and RHEL are very similar (or so I am told, I have never used RHEL myself as it is a paid product and I refuse to pay for operating systems).

{% include Layouts/clear.html %}
