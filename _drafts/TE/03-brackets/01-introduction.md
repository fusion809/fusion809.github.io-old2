
## Brackets
{% include Links/image.html image="Brackets/Brackets-1.6.png" width="100%" float="none" description="The Brackets text editor (v1.6) running on Arch Linux opened to my [JScripts][1] GitHub repository" %}

The **Brackets** text editor is a free and open-source (MIT-licensed) text editor developed by Adobe and built using web technologies. Brackets is unlike most other editors compared in this post in that it is specifically designed for web development and is not intended for general-purpose programming or text editing like Atom, Komodo Edit or VSCode. Brackets is built using its own framework ([Brackets Shell][2]), much like Atom with its Electron framework and Komodo Edit with its Firefox backbone.

Brackets is designed to be a **lightweight editor**, the biggest problem with it, in my opinion, is that it has **difficulty handling large numbers of files** (even when those files are all opened by the editor, but just present in the directory the editor is opened to) like that present in most git repositories. I have found that I cannot use it to edit *The Hornery* due to this very issue. Brackets is also known to be missing some features on Linux that it has while working on the proprietary operating systems: OS X and Microsoft Windows. Brackets is also more challenging than most other editors mentioned in this post to install on Linux distributions that do not use the `APT`/`dpkg` package managers, this is because on most distributions you either have to install Brackets from the Debian binaries provided by the Bracket's GitHub repository (on non Debian-based distributions this can still be done via extracting these binaries and moving the files within to the appropriate locations on one's system) or build Brackets from source code. You can find these Debian binaries provided by the Bracket's GitHub repository on their [releases][3] page.

If you are using **Arch Linux** or one of its derivatives I recommend you install Brackets from the AUR ([here][4] is a search showing available Brackets packages in the AUR) or from my [GitHub PKGBUILDs repository][5]. If you are using a **Debian-based distribution** I recommend using the official Debian binary releases of Brackets. On **other distributions** you may wish to follow the [Brackets building guide][6]. I personally have limited experience building Brackets myself, except on Arch Linux on which I usually fail unless I am helped by a PKGBUILD. 

[1]: https://github.com/fusion809/JScripts
[2]: https://github.com/adobe/brackets-shell
[3]: https://github.com/adobe/brackets/releases
[4]: https://aur.archlinux.org/packages/?O=0&SeB=n&K=brackets&outdated=&SB=n&SO=a&PP=50&do_Search=Go
[5]: https://github.com/fusion809/PKGBUILDs/tree/master/brackets
[6]: https://github.com/adobe/brackets/wiki/Building-Brackets-Releases
