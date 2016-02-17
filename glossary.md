---
layout:           page
title:            "Glossary"
date:             2016-02-06 +1000
last_modified_at: 2016-02-13 18:47:09 +1000
permalink:        /glossary/
---

In this website I frequently discuss topics that require some degree of pre-existing knowledge on computing topics. In this page I define some basic terminology used elsewhere in this blog. This page has a structure, such that the most basic terminology that is required to understand later sections is contained in earlier sections. So in order to best understand this page, it is advised you read it the old fashion way, from start to finish.

## Basic Definitions

### Hardware / Software
A computer's **hardware** comprises the physical components of the computer, like its hard drive on which information is stored (analogous to a person's long-term memory), random-access memory (RAM) devices (analogous to someone's working memory) and central processing unit (CPU) or processor (which is where information processing is done, this processing is analogous to a person's thoughts). The term "computer architecture" refers to the specific details of the computer's CPU. While a computer's **software** is the non-physical components to the computer, which are stored in the computer's hard drive. It includes the data stored on the hard drive like one's files as well as the computer programs, which are more or less just instructions for the computer's processor. For example, as I am writing this post I am using the Atom text editor, which is a computer program.

### Free and open-Source Software
**Free and open-source software** (**FOSS**) refers to software who's source code is licensed such that it can freely shared, distributed, studied and even modified and re-released by anyone. FOSS licenses usually require that anyone that modifies and re-releases the source code gives some recognition to the original authors of the source code and some licenses (which are called **copyleft** licenses) even require that the modified source code be released under a similar (if not identical) license to the original source code. The most popular copyleft license is the GNU General Public License (GPL), while the most popular non-copyleft (or **permissive**) FOSS licenses include the BSD licenses and the MIT License.

### Fork
In the field of software development, a **fork** or **project fork**, is when developers take a copy of the source code from one software project and start independently working on it (or developing it) themselves. In the FOSS world this is commonplace due to the lack of restrictions imposed by FOSS licenses.

### Downstream / Upstream
In software development, **downstream** and **upstream** refers to the direction from and toward the original authors or maintainers of software that is distributed as source code, respectively.

### Operating System
An **operating system** (**OS**) is the base set of system software that forms the foundation for other programs to run on top of. It manages all communication between the computer's hardware and the application software that run on top of it. At its heart, each OS has what is known as a kernel, which manages all communication with the computer's hardware.

### Unix
**Unix** (or **UNIX** for the trademark) is a family of operating systems that share several common characteristics and are certified as being compliant to at least one version of the **Single UNIX Specification** (**SUS**). These common characteristics are best summarized with what is sometimes called the "**Unix philosophy**". The Unix philosophy is that the operating system provides a set of simple command-line tools or utilities (which I will sometimes refer to as Unix utilities) that perform a limited, well-defined function, which usually involves manipulating components (like files) in the unified file system that is also characteristic of Unix systems. Additionally Unix systems also have what is known as a command language or shell scripting language, called a **Unix shell**, with which users can call on these simple tools. Unix is also notable in that it is designed to be easily portable to a variety of different computers (distinguished from one another, mostly by the details of their CPU).

### Unix-like
A **unix-like** operating system is one that behaves and to all the world seems like a Unix system, despite not being certified to any version of the SUS. These systems can also be referred to as Unix clones.

### &#42;nix
**&#42;nix** is my shorthand way of referring collectively to both Unix and Unix-like systems. Despite this, you will also see other authors, including those that know far more than I about Linux, using &#42;nix to refer to just Unix-like systems.

### Linux
**Linux** is a large family of Unix-like operating systems (its members are referred to, collectively, as Linux distributions) that share one common defining characteristic: they use the Linux kernel as their kernel. The Linux kernel is a predominantly free and open-source kernel developed by Linus Torvalds who first started developing the kernel in 1991 when he was a 21-year-old computer science student studying at the University of Helsinki in Finland. I used the phrasing "*predominantly* free and open-source" deliberately, as while most of the kernel's source code is licensed under the GNU GPL, there are some binary blobs on the kernel (which mostly just add to its compatibility with available hardware) that are not free and open-source.

### GNU
The **GNU Project** is a FOSS project that was first founded in the 1980s by Richard M. Stallman (or rms), its stated mission is to develop a free and open-source Unix clone. This clone is referred to as GNU, which is incredibly unpopular. The GNU Project provides most of the Unix utilities (contained in the GNU Coreutils package) and the Unix shell (called Bash) used by the vast majority of Linux distributions. Due to this some people refer to the family of operating systems known as Linux, as GNU/Linux.

### Free Software Foundation
The **Free Software Foundation** (**FSF**) non-profit organization set up by Stallman that advocates the widespread use of FOSS and was originally set up to hire people to develop software for the GNU Project. The FSF also provides its own set of predominantly copyleft licenses which includes the GNU GPL mentioned earlier.

### Linux-libre
The **Linux-libre kernel** is essentially the Linux kernel with its binary blobs removed. A comparatively small number of Linux distributions use the libre kernel, these distributions are often called GNU/Linux-libre distributions and are fairly unpopular compared to their non-libre counterparts.

### Berkeley Software Distribution
The **Berkeley Software Distribution** (**BSD**) is a Unix operating system that was developed at the University of California, Berkeley between 1977 and 1995. It was originally closed-source (that is, not open-source), but later releases were licensed under permissive BSD licenses. Since then several descendants of BSD have emerged with the most notable and popular one being FreeBSD. I use the terminology &#42;BSD to collectively refer to BSD and its descendants.

### Package Management System
A **package management system** (**PMS**, plural form: **PMSs**) or **package manager** is a collection of system software that automates the process of installing, configuring, removing and upgrading computer programs. Traditionally Linux PMSs were operated solely from the command-line but nowadays several graphical PMSs also exist.

## Acronyms
{% include Layouts/note.md note1="Acronyms covered in the previous sections are not repeated in this list." note2="Hyperlinks are to sources that explain, in greater detail, the term." %}

* **ABS**: [**Arch Build System**](https://wiki.archlinux.org/index.php/Arch_Build_System), a system whereby all the PKGBUILDs, patch files and assorted other files used to build packages in the pacman repositories are stored in subdirectories of `/var/abs`. It is essentially Arch's equivalent to the Portage Tree.
* **AUR**: [**Arch User Repository**](https://wiki.archlinux.org/index.php/Arch_User_Repository), a repository of Arch user-supplied PKGBUILDs, patch files and assorted other files that, while they are not used to build any packages in the pacman repositories, can (provided they do not have any bugs preventing them from building successfully, that is) be used to build Arch packages locally (on their own Arch machine) by users.
