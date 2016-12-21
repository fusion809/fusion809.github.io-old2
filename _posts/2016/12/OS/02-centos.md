## CentOS
{% include_relative infoboxes/02a-infobox.html %}

[**CentOS**](https://www.centos.org/) is a free enterprise Linux distribution that uses the RPM/yum package manager. It is used as the basis for [Red Hat Enterprise Linux](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux) (RHEL), the premier product of *Red Hat*. CentOS is essentially like a more stable, yet old (in terms of how up-to-date its software is) version of Fedora. I have used it for about year in [VirtualBox](https://en.wikipedia.org/wiki/VirtualBox) VMs. I have found it very stable, but its software is so out-of-date that it can sometimes be a deal-breaker. For example, I have used CentOS Docker containers to compile software from source code so I can build an AppImage for them. Sometimes the version of GCC is so out-of-date, however, that the compilation fails. This is the case for CentOS 5/6 containers being used to build GNU Octave 4.2.0 from source code. It is also unusual in that it does not have out-of-the-box FUSE support. 

{% include Layouts/clear.html %}
