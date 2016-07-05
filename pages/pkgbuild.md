---
date:      2016-07-05 +1000
title:     fusion809 PKGBUILDs GitHub Repository
permalink: /PKGBUILDs
layout:    page
---

My [`PKGBUILDs`](https://github.com/fusion809/PKGBUILDs) GitHub repository provides Arch Linux packages that fit into one of the following four different categories:

1. They are **not** provided by the Arch User Repository (AUR) or the Arch Linux official repositories (ALORs). The fact I have not added them to the AUR myself, is indicative of the fact that they do not seem to be of use to anyone but myself.
2. The package provided by the AUR/ALORs is missing some important features in my opinion, hence I felt the need to provide them in my own package.
3. The version of the package provided by the AUR/ALORs is old, so I wanted to provide a more up-to-date version of the package.
4. AUR packages needed to satisfy the dependencies of other package(s) provided by my repository.

Many of these packages I have built into 64-bit binary packages and added to the [current tag](https://github.com/fusion809/PKGBUILDs/releases/tag/current) of the repository. Fortunately, I have discovered that this allows one to use GitHub as a package server for pacman. To use this package server one merely needs to add:

<pre class="console">
[pkgbuild-current]
Server = https://github.com/fusion809/PKGBUILDs/releases/download/current/
SigLevel = Optional TrustAll
</pre>

to one's `/etc/pacman.conf` file. I would personally recommend adding it **before** all other repositories, although as I cannot (nor can anyone else) predict the future it is possible that one day I will get behind in maintaining these packages and they will fall behind the versions in the ALORs.
