## Portage
[**Portage**](https://wiki.gentoo.org/wiki/Portage) is the default package manager of Gentoo Linux and many of its derivatives, including Calculate and Funtoo Linux. Unlike all other package managers mentioned in this post it works with source code packages, by default. As such there are several differences between it and other package managers, in term of how it operates. See its chief repository is found in the `/usr/portage` directory, it contains ebuilds, a specialized type of Bash script. ebuilds contains instructions that Portage can use to build a binary software package (in the `.tbz2` format) and/or install the software package from source code or a binary package from another distribution (e.g., Debian packages and RPM packages). Portage is written in Python 2 and Bash script.

### Beginner-Friendliness
Portage is probably the least beginner-friendly package management system mentioned in this post, its syntax is less than intuitive 

{% include_relative Portage/table-5-basic-usage-examples.html %}
