---
layout:           post
date:             2017-02-06 +1000
title:            My days of late: transitioning from Arch Linux, Fedora and Ubuntu to Fedora and openSUSE Tumbleweed
permalink:        /my-last-few-days/
last_modified_at: 2017-02-06 +1000
categories:       experiences, Linux, Arch-Linux, ubuntu, openSUSE, Fedora
---

Between the 3rd and 5th of February 2017 I made a major transition from triple-booting Arch Linux, Fedora 25 and Ubuntu 16.04.1 to dual-booting Fedora 25 and openSUSE Tumbleweed. In this post I am reviewing the sequence of events that lead me to this transition. 

It all started when I realized that my Arch Linux system was busted. For some bizarre reason it would not start its GUI (even though it had GNOME, KDE Plasma 5, LXDE, MATE and several other desktop environments installed) on start up, even though I had configured it to do so. The last time I had booted it (a month or so prior) its GUI started fine on start-up. Its display manager (which was originally SDDM) had been configured to start up on boot (as I had enabled it using the `systemctl` command of systemd) and while it tried to start the display manager it always failed to load properly (leaving me with either a blank screen or with the systemd boot screen). This was regardless of which boot manager I used, as I did switch it to GDM and LightDM after realizing SDDM was not working. 
