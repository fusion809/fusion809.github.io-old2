## Arch Linux

### Background
{% include_relative 03-archlinux/infobox.html %}

[**Arch Linux**](https://www.archlinux.org/) is a Linux distribution that's development was started by Canadian programmer, Judd Vinet, in early 2001. Arch's first public release, however, was not until March 2002. Vinet wanted to develop a system with the minimalism and simplicity of FreeBSD, Slackware and other **barebones-type operating systems** available at the time, but with a simpler package management system (PMS) than these existing operating systems. This PMS was and is still called **pacman**, which is a binary package manager, written in C, that is quite easily the fastest package manager mentioned in this post. pacman is essentially what makes setting up an Arch system faster and its maintenance easier and less tedious than it is for the source-based barebones operating systems FreeBSD and Gentoo Linux. Arch Linux, like Gentoo Linux, follows a **rolling release model** and is more geared towards **advanced users**. Arch Linux also has some of the best written documentation of any Linux distribution, which can be found at [*The ArchWiki*](https://wiki.archlinux.org).

It is said to be geared towards more advanced users because of the mere fact that installation is from the command-line and has to be done entirely manually. While the installation process must be performed manually, by default, it is possible to create an automated installer for it, which I have done using shell script, but no automated installer comes with the official Arch Linux installation media, by default. The installation process requires some advanced knowledge, on the user's part, especially with respect to how to partition a disk, set up a network connection, chroot into and set-up a system entirely from the command-line. Fortunately, *The ArchWiki*, has an [installation guide](https://wiki.archlinux.org/index.php/Installation_guide) that is simple enough for some less advanced users to be able to follow. I personally think that Arch Linux is not as difficult to set up as Funtoo or Gentoo Linux, but it is more challenging than it is for systems with automated installers like antiX, CentOS, Debian, Fedora, FreeBSD, Linux Mint, Mageia, Sabayon Linux and Ubuntu.

{% include Layouts/clear.html %}

### Installation
After installing the base Arch Linux system, setting up a network,[^2] the most complicated part of the installation process, in my experience, is setting up the bootloader. I personally use GRUB2 on systems with BIOS firmware and systemd-boot on systems with UEFI firmware. On BIOS systems GRUB2 is fairly easy to install and set-up, while with UEFI systems this is, at least in my very limited experience with my HP Envy 17 laptop, nigh impossible. To install GRUB2 on a BIOS system I recommend running:[^3]

{% include Code/coder.html line1="pacman -S grub --noconfirm --needed" line2="grub-install --target=i386-pc /dev/sd<i>X</i>" line3="grub-mkconfig -o /boot/grub/grub.cfg" %}

where `X` is the letter (no numbers!) corresponding to the disk on which you wish to install GRUB2. On UEFI systems the only bootloader I have had any luck with was systemd-boot which for me was installed by running (my ESP partition was `/dev/sda2`):[^4]

{% include Code/coder.html line1="mount /dev/sda2 /boot/EFI" line2="bootctl --path=/boot/EFI install" line3="cp -a /boot/&#42;linux&#42; /boot/EFI" %}

The last command needs to be re-run whenever a new kernel is installed. Then to automatically boot the systemd-boot boot manager I started my Windows 10 system on `/dev/sda` and ran in an administrator command prompt:

{% include Code/coder.html line1="bcdedit /set {bootmgr} path \EFI\systemd\systemd-bootx64.efi" %}

### Package Management
The package manager of Arch Linux, pacman, uses an untraditional syntax, that can take some time to pick up. Despite this, after you eventually pick it up, you will probably find that package management on Arch Linux is fairly simple. The software repositories (both official and unofficial) of Arch Linux are amongst the comprehensive of any Linux distribution. If you cannot find the program you want in the official Arch Linux repositories (`[core]`, `[extra]`, `[community]`, `[multilib]` and their testing counterparts)[^5] then it is doubtful you will not be able to find it in the **Arch User Repository** (**AUR**). The main distinguishing characteristics between the AUR and the official Arch Linux repositories are that:

1. The AUR is community-maintained (that is, anyone with the inclination and the time can add a package to the AUR), while the official repositories are maintained by developers and trusted users. This explains why there are over twice as many packages in the AUR than in the official repositories &mdash; far fewer people are allowed to add packages to the official repositories than can add packages to the AUR. This also means that packages in the AUR are more likely to contain malicious (like system-damaging) content than the binaries in the official repositories.
2. The AUR contains Arch packaging-specific source files (that is, none of the upstream source is usually kept in the AUR, rather just the files used, specifically, to build Arch Linux packages) like PKGBUILDs and associated install files (that is, files with the `.install` file extension), patches, *etc.* while the official repositories contain precompiled binary packages.

On the rare occasion that you cannot find your desired package in the AUR or official Arch repositories, it is usually easy enough to write the Arch packaging source files yourself and build a package from it, for further details see the next section on package development under Arch Linux.

### Package Development
Building packages under Arch Linux is fairly easy as it involves writing a PKGBUILD, and in some cases install files, patches and even desktop configuration files. PKGBUILDs are specialized shell scripts, which contain build instructions for the package being built as well as metadata. install files are essentially just a few extra sections from PKGBUILDs that are usually stored in files with the `.install` file extension. Patches are files that are used to modify the upstream source of the package, in question, usually to make it possible to build or use the package under Arch Linux. Building packages from PKGBUILDs is done using the `makepkg` command provided by the `pacman` package. There is even a command-line tool called `namcap` (installed by running {% include Code/coders-rb.html line1="pacman -S namcap" %} that can be used to check for errors in your PKGBUILD and the package you build from it. If you would like to see an example of a PKGBUILD, install file and patch file being used to build an Arch package, I recommend you see the [atom-editor subdirectory of my PKGBUILDs repository commit c67e42a](https://github.com/fusion809/PKGBUILDs/tree/c67e42a548900cfab7be38753a2e2037d95f3d39/atom-editor). In my experience PKGBUILDs are far easier to write than the packaging-specific source files of other distributions like Debian, Fedora, Gentoo, openSUSE and Sabayon.

### Ratings
* **BFO**: 2-3. Not particularly beginner-friendly, as it is a barebones system, but it is more beginner-friendly than Gentoo Linux for sure.
* **CED**: 5. Has the best documentation available for any Linux distribution.
* **EPD**: 5. Package development is easiest on Arch Linux. This is because package development essentially just entails writing PKGBUILDs, and in the case of some packages, install files and patches.
* **FOS**: 4. Official repositories contain naught but FOSS, except for the kernel which has binary blobs on it. The AUR contains some proprietary software though.
* **FSQ**: 3. Its forums are fairly active, but I have found it is easy to unintentionally anger the users there.
* **OSR**: 4-5. The official repositories are amongst the most comprehensive of any distribution. Notably they contain the Deepin Desktop Environment (DDE) and SageMath, both of which are absent from the official repositories of most other distributions.
* **OTB**: 1. Not out-of-the-box. Does not even come with out-of-the-box support for Wi-Fi.
* **PMS**: 3. The syntax is not as intuitive or obvious as that of APT or DNF. Plus there are no official graphical front-ends for pacman on Arch Linux.
* **SBE**: 4-5. Software updates usually come into the official repositories from upstream within a day or two. Core system components (like the kernel; they are found in the `[core]` repository) take longer to get updated, as there is a review process through which they must pass before they are added to the stable `[core]` repository. This is to ensure that the kernel is usable and not too buggy to prevent one's system from booting. First, they are added to `[testing]`, then after some review they will be moved into the `[core]` repository. This process is so tedious that some kernel versions will never make their way into the `[core]` repository before a new kernel is released. For example, the Linux 4.5 kernel was added to the `[testing]` repository on 15 March 2016 and it was not until 14 April 2016 that it was finally added to the `[core]` repository.
* **USR**: 4-5. The AUR is very comprehensive. The most notable piece of software that was not in the AUR when I started using Arch, that I wanted, was Moksha (the E17 fork used as the default desktop environment of Bodhi Linux), which I later added to this repository myself.