## Arch Linux
{% include Layouts/infobox.html logo="ArchLinux.svg" distro="Arch Linux" founded="2002" country="Canada" developers="Judd Vinet, Aaron Griffin and community." design="Minimalist" package-manager="pacman" release-model="Rolling" date="2002" sbes="5" cosr="5" %}

**Arch Linux** is a Linux distribution that's design philosophy emphasizes simplicity and minimalism. As such, a fresh Arch Linux installation will contain only a small handful of programs (50 to be precise, at the time of writing), most of which are essential pieces of system software (to find a full list see the [base package group](https://www.archlinux.org/groups/x86_64/base/)), along with a few command-line utilities (such as `sed` and `tar`) and the text editors nano and vi. A fresh install is only accessible via the command-line, with no graphical user interface (GUI). While this level of minimalism makes it "simple" in the opinion of more confident Linux users it can make it a challenge (and hence more complex) to use for less experienced users, especially those uncomfortable with the command-line.

### Installation
Its installation has to be performed manually (for full details see the [Installation guide](https://wiki.archlinux.org/index.php/Installation_guide) article at *The ArchWiki*) and consists of five major steps:

1. Setting up the correct partition table to house the new Arch Linux installation. This step can be performed from another operating system (that is, if the computer has another operating system this system can be used to create the partition table, potentially using graphical tools like GParted).
2. Mounting what will become the Arch Linux root partition to `/mnt`.
3. Installing the base package group with: {% include Code/coders.html line1="pacstrap /mnt base" %}.
4. Configuring the new system, including creating the required `/etc/fstab` file, setting your timezone, locale settings and hostname.
5. Setting up a bootloader.

### Package Management
I personally prefer Arch Linux over all other operating systems because of its simple and powerful package management system &mdash; pacman. pacman is a package manager written predominantly in C, Python and Shell (<abbr title="Also known as">a.k.a.</abbr>, Bash) and its chief advantages in my opinion are:

* Its speed. My analyses detailed in [*A Comparison of Popular Linux Package Managers*](/comparison-of-package-managers/) found it to be the fastest Linux package manager compared. This is really important when one considers how many packages (such as a desktop environment, set of applications, *etc.*) one is likely to need to install soon after installing Arch Linux.
* The ease of installing whichever piece of software you want. The PKGBUILD file used to provide pacman's `makepkg` utility with metadata and instructions on how to build a package is, in my opinion, the simplest packaging file I have ever seen, in terms of how easy it is to write a valid one for a package of your choosing. Writing a PKGBUILD should be incredibly intuitive to anyone with experience writing in Shell. Additionally Arch Linux's pacman repositories and the [Arch User Repository](https://aur.archlinux.org) (AUR) are the most extensive software repositories I have ever seen.
* It, for the most part (there are the odd exception, such as the Vim package), does not split programs up into multiple different packages, each containing specific components of the program. More popular distributions like Debian, Fedora and openSUSE will often split one program up into three or more different packages. Most of the time one package will have the suffix `-dev` or `-devel` and will contain the package's header files (that is, files usually contained in the `/usr/include` folder that are usually included into C/C++ files using the `#include` directive), another will have the `-debug`, or `-dbg` suffix and will contain the package's debugging symbols, while another will contain the bare minimum runtime components of the package (which will usually have no suffix or prefix at all, just the program's name) and another will have the `lib` prefix and will contain the program's libraries.

Its main disadvantages are its lack of an officially-supported graphical front-end and its syntax can be challenging to get used to.
