## Installing Atom
Atom is nowhere near as straight-forward to install as GNU Emacs, Vim or any other major free and open-source text editors. The reasons are several fold. Firstly, the vast majority of Linux distributions so far do not have an Atom package in their official software repositories. This leaves users to either have to build an Atom package themselves or compile Atom from source code. Secondly, building Atom from source code is an error-prone process that requires Internet access (and I do not mean to just retrieve Atom's source code). Thirdly, building Atom requires a recent version of Node.js and npm. The Atom GitHub repository has a mechanism for automatically building 64-bit Deb and RPM packages for each new Atom release, which allows Atom to be easily installed on platforms capable of installing these packages. The main problems with this method are that:

* Firstly, not all distributions can work with Deb/RPM packages.
* Secondly, these binaries are available for only 64-bit systems.
* Third, even 64-bit systems that are capable of installing these packages do not get automatic updates when new releases of Atom become available. Rather the user will have to manually download the new Atom package for their respective distribution and upgrade Atom using said package.

### Official Binaries
Quite often installing Atom from official binary releases (that is, the Deb/RPM releases previously mentioned) is the simplest method for those on distributions that use said package formats. So this section will guide one through this process.

#### Deb
If your specific distribution is capable of working with 64-bit Deb packages (e.g., 64-bit Debian, Linux Mint and Ubuntu should be able to work with these packages), presumably using the `dpkg` package manager, then the following should download the latest Atom release and install it, provided the presently-enabled repositories are capable of satisfying its dependencies:

{% include Code/coder.html line1="wget -cO- https://atom.io/download/deb > atom-amd64.deb" line2="dpkg -i atom-amd64.deb" line3="apt-get -f install" %}

#### RPM
On 64-bit RPM distributions several different commands maybe better suited to install Atom, depending on the specific distribution being used. For CentOS / Fedora &leq;21 / Oracle Linux / Red Hat Enterprise Linux / Scientific Linux and other distributions still using the **yum package manager**, running the following should install Atom from the latest official RPM binary:

{% include Code/coder.html line1="wget -cqO- https://atom.io/download/rpm > atom.x86_64.rpm" line2="yum install -y atom.x86_64.rpm" %}

while Fedora &geq;22, Korora &geq;22 and other distributions that are now using the **DNF package manager** run:

{% include Code/coder.html line1="wget -cqO- https://atom.io/download/rpm > atom.x86_64.rpm" line2="dnf install -y atom.x86_64.rpm" %}

While on Mageia and other distributions using the urpmi package manager one would run:

{% include Code/coder.html line1="urpme apm # Mageia has a package called apm that is non-essential but conflicts with Atom" line2="wget -cqO- https://atom.io/download/rpm > atom.x86_64.rpm" line3="urpmi atom.x86_64.rpm" %}

On openSUSE and other distributions using the ZYpp package manager, to install Atom, one would run:

{% include Code/coder.html line1="wget -cqO- https://atom.io/download/rpm > atom.x86_64.rpm" line2="zypper in -y atom.x86_64.rpm" %}

### Package Managers
The following distribution(s) have Atom in their official software repositories:

* {% include Links/distros/sabayon.html %}

the following distributions have an Atom package available from unofficial repositories:

{% include_relative 03a-unofficial.md %}

###
