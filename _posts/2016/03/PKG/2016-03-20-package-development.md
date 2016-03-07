---
layout:           post
title:            "An Introduction to Building Packages for Linux"
date:             2016-03-20 +1000
categories:       package-development, linux
last_modified_at: 2016-03-07 17:25:00 +1000
permalink:        /package-development/
---

Something I frequently do on whichever Linux distribution I find myself on, is I build packages. It is infinitesimally rare, in fact so rare that I have not ever come across such a case, for a distribution to have every exact package (including package version) I want. Package development, for me, is done via one of four major methods:

* Building the package using the **standard tools** on my own instance of the respective Linux distribution. For example, on Arch Linux this involves writing a PKGBUILD and running `makepkg -s` in the directory of said PKGBUILD. This method is the most risky of methods, as if there is something wrong with the build file (e.g., with the `.ebuild` or `.spec` file extension or PKGBUILD file name), it is possible for this method to lead to system breakage.
* Building the package in a **chroot**. chroots should (but there are no guarantees) protect one's system from any errors in the build file.
* Building the package using **Docker**. Docker is an even safer method to build packages with. It is also more platform-independent as you can build packages for any variety of different distributions, on the one system.
* Building the package using the **Open Build Service** (**OBS**). Building a package locally with this method is more risky than using Docker. This method also allows one to more easily distribute your packages, as one can set up an OBS repository using this method. 
