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
I started off by creating a releng ISO by following the [archiso](https://wiki.archlinux.org/index.php/Archiso) guide at the ArchWiki on an Arch VirtualBox VM. I found the section entitled ["Installation without Internet access"](https://wiki.archlinux.org/index.php/Archiso#Installation_without_Internet_access) especially alluring, as it sounded like what I wanted, but confusing and difficult for me to follow. It was so confusing that at first I thought it was about creating a live ISO without an Internet connection, while it is really about creating a live ISO that can be used to install Arch Linux without an Internet connection. Of course, the natural answer to such a query is "Ask for help via official channels such as the IRC Channel or Forum", well when I initially the purpose of the "Installation without Internet access" section, I asked for help on the {% include Links/irc.html channel="archlinux" %}, a user gave me a response that gave me the sense that I was being a burden to them. Plus if you read the [Arch forum rules](https://bbs.archlinux.org/viewtopic.php?id=130309), you may understand that me, a less than advanced Linux user, felt that I would be called a "Help Vampire" as to them it might seem like I just want them to hand-hold me through the process. My standpoint is that I am willing to do as much of the work myself as I can, but I do not have a computer science degree, I do not have an in-depth understanding of Bash scripting and Unix commands, *etc.* so some "hand-holding" may be necessary.
