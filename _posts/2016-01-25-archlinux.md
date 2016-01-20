---
layout:     post
title:      "How I managed to install Arch Linux and set it up"
categories: arch-linux, installation-guide
date:       2016-01-25 +1000
redirect_from:
  - /how-to-install-arch-linux/
  - /installing-arch-linux/
---
{% include Links/image.html image="operating-systems/Arch-Linux-GNOME.png" float="none" width="1130px" description="GNOME 3.18 running on Arch Linux installed on this removable drive" %}
{% include Layouts/draft.html %}

On 19 January 2016 I installed Arch Linux on a removable drive, using my Lenovo Laptop, after trying and failing to install this distro on this removable drive several times. Major hurdles in the past were my Broadcom chipset (specifically BCM43228), inexperience with installing Arch Linux on anything but a VirtualBox VM (for which I used install scripts written by others) and inexperience with installing any Linux distribution without some automation.

## Hardware Specs
For anyone that is interested, this laptop I used to install Arch Linux on the removable drive, had the following specs:
<script src="/js/b44fa06f1ed0075af0cc.js"></script>

## Creating a custom ISO
I started off by creating a releng ISO by following the [archiso](https://wiki.archlinux.org/index.php/Archiso) guide at the ArchWiki on an Arch VirtualBox VM. I found the section entitled ["Installation without Internet access"](https://wiki.archlinux.org/index.php/Archiso#Installation_without_Internet_access) especially alluring, as it sounded like what I wanted, but confusing and difficult for me to follow. It was so confusing that at first I thought it was about creating a live ISO without an Internet connection, while it is really about creating a live ISO that can be used to install Arch Linux without an Internet connection.

Of course, the natural answer to such a query is "Ask for help via official channels such as the IRC Channel or Forum", well when I initially misunderstood the purpose of the "Installation without Internet access" section, I asked for help on the {% include Links/irc.html channel="archlinux" %}, a user gave me a response that gave me the sense that I was being a burden to them. Plus if you read the [Arch forum rules](https://bbs.archlinux.org/viewtopic.php?id=130309), you may understand that me, a less than advanced Linux user, felt that I would be called a "Help Vampire" as to them it might seem like I just want them to hand-hold me through the process. My standpoint on this, is that I am willing to do as much of the work myself as I can, but I do not have a computer science degree, I do not have an in-depth understanding of Bash scripting and Unix commands, *etc.* so some "hand-holding", from their point of view, may be necessary. I am mentioning this, because if this fear of mine is unjustified, I would like someone with experience on these forums or IRC channel to:
1. Tell me.
2. Get the Arch Linux forum rules to be rephrased in a less misleading way, I doubt I am not the only person afraid to ask questions there.

I ended up settling on just creating an ISO for Arch following the instructions for those with a net connection on the target machine, with custom repos containing i686 and x86_64 packages for `broadcom-wl`, `broadcom-wl-dkms`, `package-query` and `yaourt` that were all built from the AUR. I was hoping that this might enable me to boot the host machine that would automatically connect to my Wi-Fi. To my surprise when I booted the archiso live session not one of the custom packages were installed and I could not figure out a way to install them without an Internet connection. So I ended up having to connect my Laptop to an Ethernet cable, which I took from my mum's computer (I have no spare cables, hence why I wanted to just use my Wi-Fi from the beginning) and using the resulting Ethernet connection to install Arch. See in my home I sit on the couch with my laptop and a little over a metre to my right is the computer room where my mum and dad's desktop computers lie. In there is also the modem that provides my parent's desktop computers Ethernet and my Wi-Fi.

Fortunately before I booted my archiso live session I had created a partition on which to install Arch Linux. This partition was called `/dev/sdc3` in my archiso live session so I ran:
```bash
mount /dev/sdc3 /mnt
pacstrap /mnt base
genfstab -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt
```
as root. Then I ran, in the chroot, the commands:
```bash
echo "brenton-pc" >> /etc/hostname
ln -s /usr/share/zoneinfo/Australia/Brisbane /etc/localtime
```
uncommented `en_AU.UTF-8` in my `/etc/locale.gen` file and then ran:
```bash
locale-gen
echo LANG=en_AU.UTF-8 > /etc/locale.conf
mkinitcpio -p linux
passwd root
pacman -S git base-devel --noconfirm
```
Then I set my root password. Then I ran:
```bash
useradd -m -g wheel fusion809
```
to create a user entitled fusion809, with a home folder. Then I ran `nano /etc/sudoers`, uncommented the `wheel`-related lines, so that I could run the `sudo` command as fusion809. Then I entered a standard user session for fusion809 (with `su - fusion809`) and ran:
```bash
git clone https://aur.archlinux.org/package-query.git
pushd package-query
makepkg -si --noconfirm
popd
git clone https://aur.archlinux.org/yaourt.git
pushd yaourt
makepkg -si --noconfirm
popd
yaourt -S broadcom-wl --noconfirm
```
to install Yaourt and broadcom-wl. 
