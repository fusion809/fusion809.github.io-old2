### Docker
[**Docker**](https://www.docker.com/) is an open-source virtualization program that is written in Google's [Go programming language](https://en.wikipedia.org/wiki/Go_(programming_language)), that enables the automated deployment of software containers (which usually contain miniature operating systems) that can be used for a variety of different purposes. One such purpose is the building of software packages. Building packages using Docker is similar to building packages in a chroot, as it involves using the standard tools for building the package in question (e.g., `makepkg` for ALPs and `ebuild` for Gentoo / Sabayon packages), but it is done in a safer environment (in this case, a software container). This environment (which is called a **container** in the case of Docker) is designed so that any programs running inside it (including package-building commands) cannot access or modify anything outside the environment, including components of the host's file system.

#### Setup
Docker can only be run on 64-bit Linux systems and is available from the official software repositories of many Linux distributions, including:

* Arch Linux
* Fedora
* Gentoo Linux
* Manjaro Linux
* openSUSE / SUSE Linux Enterprise
* Sabayon Linux

Docker can be installed on [CentOS](https://docs.docker.com/engine/installation/linux/centos/), [Debian](https://docs.docker.com/engine/installation/linux/debian/), [Red Hat Enterprise Linux](https://docs.docker.com/engine/installation/linux/rhel/) and [Ubuntu](https://docs.docker.com/engine/installation/linux/ubuntulinux/), from unofficial repositories via methods outlined at the links provided. On most distributions after installing Docker you will need to add your user to the `docker` group, log out and log back in to this user account and start the Docker daemon using systemd. To add your user to the `docker` group run:

{% include Code/coder.html line1="gpasswd -a $USER docker" %}

where `$USER` is the name of your user. And to start the Docker daemon with systemd one would run:

{% include Code/coder.html line1="systemctl start docker" %}

While to get the Docker daemon to automatically start on startup one would run:

{% include Code/coder.html line1="systemctl enable docker" %}

#### Use
To find pre-existing containers that you can use, search the [Docker Hub](https://hub.docker.com/). To build Debian packages you will probably be better off using the Debian container. To pull it (which makes it available for use on your current PC) run:

{% include Code/codeu.html line1="docker pull debian:latest" %}

To build a RPM package one would probably be best using the latest official Fedora container, run:

{% include Code/codeu.html line1="docker pull fedora:latest" %}
