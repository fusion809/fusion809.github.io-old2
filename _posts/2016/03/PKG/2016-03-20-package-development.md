---
layout:           post
title:            "An Introduction to Building Packages for Linux"
date:             2016-03-20 +1000
categories:       package-development, linux
last_modified_at: 2016-03-07
permalink:
  - /package-development/
---

Something I frequently do on whichever Linux distribution I find myself on, is I build packages. It is infinitesimally rare, in fact so rare that I have not ever come across such a case, for a distribution to have every exact package (including package version) I want. Package development, for me, is done via one of four major methods:

* Building the package using the standard tools on my own instance of the respective Linux distribution. For example, on Arch Linux this involves writing a PKGBUILD and running `makepkg -s` in the directory of said PKGBUILD. This method is the most risky of methods, as if I make a mistake it can cause system breakage.
*
