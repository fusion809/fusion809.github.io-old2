### Installation
Brackets is more challenging than most other editors mentioned in this post to install on Linux distributions that do not use the `APT`/`dpkg` package managers, this is because on most distributions you either have to install Brackets from the Debian binaries provided by the Bracket's GitHub repository (on non Debian-based distributions this can still be done via extracting these binaries and moving the files within to the appropriate locations on one's system) or build Brackets from source code. You can find these Debian binaries provided by the Bracket's GitHub repository on their [releases][3] page.

If you are using **Arch Linux** or one of its derivatives I recommend you install Brackets from the AUR ([here][4] is a search showing available Brackets packages in the AUR) or from my [GitHub PKGBUILDs repository][5]. If you are using a **Debian-based distribution** I recommend using the official Debian binary releases of Brackets. On **other distributions** you may wish to follow the [Brackets building guide][6]. I personally have limited experience building Brackets myself, except on Arch Linux on which I usually fail unless I am helped by a PKGBUILD.

[3]: https://github.com/adobe/brackets/releases
[4]: https://aur.archlinux.org/packages/?O=0&SeB=n&K=brackets&outdated=&SB=n&SO=a&PP=50&do_Search=Go
[5]: https://github.com/fusion809/PKGBUILDs/tree/master/brackets
[6]: https://github.com/adobe/brackets/wiki/Building-Brackets-Releases
