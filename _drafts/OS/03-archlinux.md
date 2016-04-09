## Arch Linux
[**Arch Linux**](https://www.archlinux.org/) is a Linux distribution that's development was started by Canadian programmer, Judd Vinet, in early 2001. Arch's first public release, however, was not until March 2002. Vinet wanted to develop a system with the minimalism and simplicity of FreeBSD, Slackware and other **barebones-type operating systems** available at the time, but with a simpler package management system (PMS) than these existing operating systems. This PMS was and is still called **pacman**, which is a binary package manager, written in C, that is quite easily the fastest package manager mentioned in this post. pacman is essentially what makes setting up an Arch system faster and its maintenance easier and less tedious than it is for the source-based barebones operating systems FreeBSD and Gentoo Linux. Arch Linux, like Gentoo Linux, follows a **rolling release model** and is more geared towards **advanced users**.

Arch Linux is available only for ARM, i686 and x86_64 architectures. It is said to be geared towards more advanced users because of the mere fact that installation is from the command-line and has to be done entirely manually. This process requires some advanced knowledge, on the user's part, especially with respect to how to partition a disk, set up a network connection, chroot into and set-up a system entirely from the command-line. Fortunately, **The ArchWiki**, has an [installation guide](https://wiki.archlinux.org/index.php/Installation_guide) that is simple enough to understand. I personally think that Arch Linux is not as difficult to set up as Funtoo or Gentoo Linux, but it is more challenging than it is for systems with automated installers like antiX, CentOS, Debian, Fedora, FreeBSD, Linux Mint, Mageia, Sabayon Linux and Ubuntu. After installing the base Arch Linux system, setting up a network,[^2] the most complicated part of the installation process, in my experience, is setting up the bootloader. I personally use GRUB2 on systems with BIOS firmware and systemd-boot on systems with UEFI firmware. On BIOS systems GRUB2 is fairly easy to install and set-up, while with UEFI systems this is, at least in my limited experience, nigh impossible. To install GRUB2 on a BIOS system I recommend running:[^3]

{% include Code/coder.html line1="grub-install --target=i386-pc /dev/sd<i>X</i>" line2="grub-mkconfig -o /boot/grub/grub.cfg" %}