---
layout:     post
title:      "Virtualization and Linux"
date:       2016-03-12 +1000
categories: linux, virtualization, docker, virtualbox
permalink:  /2016/03/12/virtualization/
---

Two programs, that I have been using on a daily, or at least, weekly basis are the free and open-source virtualization programs **Docker** and **Oracle VM VirtualBox** (or VirtualBox for short). There are several other virtualization programs available that are both free and open-source and Linux-compatible, but these are the two that I have the greatest experience with and will hence be the main focus of this article. Before I describe them, I will need to clear up some terminology. The **host** operating system, or host machine, is the operating system or physical machine, on which the virtualization program is being run. The operating system, or machine, running inside the virtualization program, is called the **guest** operating system. The virtualized system, or machine, being run through the virtualization program, is also called a virtual machine (VM). The host machine can also be called the actual machine.

Docker and VirtualBox, are very distinctive programs in what they do. Docker creates a container for virtualization, wherein you can do most things you could on an actual machine, but the system uses the host's kernel and has access to far greater amounts of CPU and RAM than a VirtualBox VM would. Docker is best for cases in which you simply need to access the command-line of the guest operating system. It is especially useful when I wish to build packages for a distribution I am not presently using. It is possible to give docker containers access to your display server (on Linux systems this is usually X11), but it is not enabled by default. VirtualBox creates a miniature (in terms of the CPU, RAM and hard disk drive space available to it) version of the guest operating system. If you open your VirtualBox guest machine in full-screen, it should look identical to how it would if you were running it as your host machine. 

Another virtualization program I have used that is free and open-source and Linux-compatible is Packer, i
