---
layout:        post
title:         "An Introduction to Linux for Windows Users"
categories:    linux, newcomers, simplified
date:          2016-02-29 +1000
redirect_from:
  - /linux-newcomers/
---

A few days ago, I was asked by a long-time Windows user, how steep the learning curve for Linux is, as he wanted to make the transition from Windows to Linux, due to privacy concerns relating to Windows 10. This post is essentially a longer and more thorough answer than the answer I originally gave him. As such this post is oriented towards the average Windows user whom knows little, if anything, about Linux and is not necessarily otherwise technologically-knowledgeable. On this site there is a [glossary page](/glossary/), to which I would like to ask you to refer if any term I use is unknown to you. If you cannot find a definition for any term that confuses you there, please [contact me](/contributing/).

## What is Linux?
{% include Layouts/note.md note1="Further information about Linux can be found in the [glossary](/glossary/#linux)" %}

**Linux** is a &gt;300-member family of [Unix-like](/glossary/#unix-like) operating systems, that share one common, defining characteristic: they use the Linux kernel as their [operating system](/glossary/#operating-system) kernel. The majority of these operating systems also use [GNU Project software](/glossary/#gnu) for their basic Unix utilities and hence have also been referred to as **GNU/Linux** systems. Each individual member of the Linux family of operating systems, is called a &ldquo;Linux distribution&rdquo; (for which I will be using the acronym, LD). The most important differences between Linux and Windows from the point of view of users:

* Most LDs are available free of charge (that is, you pay nothing to obtain them legally), while Windows is not. If you have bought a new computer with Windows preinstalled and you are thinking, "I did not pay for Windows, it came with the computer." I am afraid you are mistaken. Part of the cost of your computer was likely for the Windows operating system that came preinstalled on it. Unless otherwise stated, all LDs mentioned by name in this post are available free of charge.

* Linux is Unix-like, Windows is not. Windows systems do not follow the Unix design philosophy and as such have fundamental differences from corresponding Linux systems. These differences are most evident by examining the file system structure of Windows and comparing it to that of Unix-like systems such as Linux. Windows uses single-letter, with a colon afterward, prefixes to distinguish between hard disks. `C:` is used for the hard drive on which the presently-running Windows system is booting from. Folders in Windows are denoted using back-slashes `\`, for example, a user named Brenton's home directory may be located at `C:\Users\Brenton`. Linux's file system, on the other hand, does not use any suffixes and rather uses forward-slashes to denote directories. For example, a user named Brenton would have a home directory at `/home/Brenton`. The file system structure of Linux systems is described in greater detail in [this section](#file-system).

* Different software. You will not be able to take some of your applications with you when transitioning from Windows to Linux. Some applications run solely on Windows while others run only on Windows and OS X. Most proprietary games (in other words games that do not allow users to see their source code; paid games will fit into this category) you have run on Windows will not run on Linux, or if they do they will likely not run as well.
