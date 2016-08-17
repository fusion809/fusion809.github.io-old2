## Arch Linux
{% include_relative 02a-archlinux-infobox.html %}

**Arch Linux** is a Linux distribution that's primary focus is on simplicity and minimalism. As such, a fresh Arch Linux installation will contain only a small handful of programs (53 to be precise, at the time of writing), most of which are essential pieces of system software (to find a full list see the [base package group](https://www.archlinux.org/groups/x86_64/base/)). Such a system is only accessible via the command-line, with no graphical user interface (GUI). While this level of minimalism makes it "simple" in the opinion of more confident Linux users it can make it a challenge to use for less advanced users, especially those uncomfortable with the command-line. Its installation has to be performed manually (for full details see the [Installation guide](https://wiki.archlinux.org/index.php/Installation_guide) article at *The ArchWiki*) and this process consists of five major steps:

1. Setting up the correct partition table to house the new Arch Linux installation. This step can be performed from another operating system (that is, if the computer has another operating system this system can be used to create the partition table, potentially using graphical tools like GParted).
2. Mounting what will become the Arch Linux root partition to `/mnt`.
3. Installing the base package group with: {% include Code/coders.html line1="pacstrap /mnt base" %}.
4. Configuring the new system, including creating the required `/etc/fstab` file, setting your timezone, locale settings and hostname.
5. Setting up a bootloader.
