---
layout:           post
title:            "How I switched from Arch Linux to openSUSE Tumbleweed"
date:             2016-02-09 +1000
categories:       opensuse, linux, arch-linux
redirect_from:
  - /opensuse-tumbleweed/
---

Yesterday, 8 February 2016, I experienced an issue with Xorg / my graphics card on my Arch Linux installation after rebooting that prevented me from accessing SDDM, LightDM and the desktop environments I had set up (the exact time this was, would have been roughly 3-4 am, Australian Eastern Standard Time [AEST, or UTC+10]). I spent about an hour trying to fix it myself, guided by the ArchWiki documentation,  but then I asked for help at the [Arch Linux forums](https://bbs.archlinux.org/viewtopic.php?pid=1602691) and instead of receiving the help I was looking for, I received rude treatment from one of the forum's admins and a series of failed solutions from others in the forum. If all I was getting was failed solutions, with no abuse, odds are I would have stuck it out for a while longer, as obviously no one is God, we all make mistakes as we do not know everything, so I was prepared for several failed attempts to fix my problem before an actual successful solution would come along, but I have had to deal with this sort of abuse or rudeness before on other Linux forums and I was sick of it, so I decided to jump ship to **openSUSE Tumbleweed** (**OT**).

## Why openSUSE Tumbleweed?
The natural question is "Why openSUSE Tumbleweed? Why not *distribution X*?" Well, there were several factors guiding my decision. What I was looking for in a distribution included:

1. A rolling release model, as I loath having to upgrade systems that use a standard release model (e.g., for three years, as I have previously stated on this blog, I used Ubuntu and only Ubuntu, as my Linux distribution and it has to be upgraded like this every six months), as it always seems something gets broken in the process.
2. Decently-sized (at least 20) team of developers maintaining its packages, repositories and other components, as I had past experience with a distribution with a small development team, Sabayon, and I knew from this distribution that no matter how "bleeding edge" they claim their system is, some packages inevitably slip through the cracks and become out-of-date.
3. A fairly popular distribution as more popular distributions tend to have better free support, like online forums and IRC channels.
4. An intuitive and easy-to-use automated installer, as while I had managed to install Arch without one, it made the process a little less straight-forward.
5. Enough stability so that I would never experience the graphics issues I had experienced with Arch Linux.
6. Easy and fast package management.
7. An easy package development process so that I could create packages myself without having to put in so much effort that I may as well be getting a university degree for it.
8. High quality of free documentation.

The distribution that fulfilled these criterion to the greatest extent, in my opinion (based on knowledge I had gained from running it in VirtualBox VMs and from reading other reviews), was openSUSE Tumbleweed, runners up were **Fedora** and **Manjaro Linux**. See openSUSE fulfills criterion 1-6 and 8, as for 7 well it seems it will be more difficult for me to pick it up than it was for me to pick up package development on Arch Linux / Manjaro Linux. Although I suspect it will not be quite as bad as learning to write ebuilds was when I was using Sabayon.

Fedora on the other hand, fulfills criterion 2-6 and to a lesser extent than openSUSE, criterion 8. Manjaro fulfills criterion 1-7 and (with the help of the *ArchWiki*) criterion 8. The reason I did not choose to go back to Manjaro was because, firstly I was curious as to what OT would be like to use and because Manjaro's software is not quite as bleeding edge as I would like. See Manjaro's software repositories are updated once a week (when updates from upstream, that is the Arch repositories, are allowed to trickle downstream), roughly, which means that every week I would have a heap of packages that are to be upgraded, as opposed to OT in which the updated packages are released whenever they are created.

One review that made me think it might be the distribution for me, was [one](http://www.cio.com/article/3008856/open-source-tools/is-opensuse-tumbleweed-good-enough-for-a-seasoned-arch-user.html) by Swapnil Bhartiya at CIO.com. It was written from the point of view of an experienced Arch user and it mentioned some strong points of OT over Arch Linux.

## How I installed openSUSE Tumbleweed
I installed openSUSE Tumbleweed from the netinstall ISO image, as it is much smaller (~100 MB) than the larger DVD image (~4.7 GB) and getting the DVD image would take me at least three hours with my Internet connection. I had been up for roughly 13 hours at the time, so I felt if I had to wait three hours I would probably be too tired to go through the ~1 hour installation process for OT. Fortunately the netinstall image more than sufficed for the installation, although it took me about two hours to install OT using this method. I had to borrow my mum's Ethernet cable to install OT though, as it did not provide out-of-the-box support for my Broadcom chipset. Then I installed the [broadcom-wl](https://software.opensuse.org/package/broadcom-wl) package from the home:X0F:HSF:Kernel repository. 

Yesterday I spent fairly minimal time using openSUSE as when I installed it, I had been up for ~14 hours and was near the time I would go to bed. Today, my first full day using openSUSE, I encountered an issue that prompted me to [ask a question](https://forums.opensuse.org/showthread.php/513459-Atom-spec-file-is-not-building-an-RPM-or-SRPM-why?p=2753208#post2753208) at the openSUSE forums. The response I got at these forums (which was from a forum admin too, ironically) was much more polite than I received at the Arch forums.
