---
layout:           page
title:            "Glossary"
date:             2016-02-06 +1000
last_modified_at: 2016-03-04 17:25:52 +1000
permalink:        /glossary/
---

In this website I frequently discuss topics that require some degree of pre-existing knowledge on computing topics. In this page I define some basic terminology used elsewhere in this blog. This page has a structure, such that the most basic terminology that is required to understand later sections is contained in earlier sections. So in order to best understand this page, it is advised you read it the old fashion way, from start to finish.

## Basic Definitions

### Hardware
A computer's **hardware** comprises the physical components of the computer, like its **hard drive** (or **hard disk drive** [**HDD**]) on which information is stored (analogous to a person's long-term memory), **random-access memory** (**RAM**) devices (analogous to someone's working memory) and **central processing unit** (**CPU**) or processor (which is where information processing is done, this processing is analogous to a person's thoughts). The term "computer architecture" or "**instruction set architecture**" (**ISA**) refers to the set of instructions that the CPU, in question, can understand.

### Software
A computer's **software** are the non-physical components to the computer, which are stored in the computer's hard drive. It includes the data stored on the hard drive like one's files as well as the computer programs, which are more or less just instructions for the computer's processor. For example, as I am writing this post I am using the Atom text editor, which is a computer program.

### Source Code
**Source code** is a collection of computer instructions written in at least one human-readable computer language. The type of computer language most frequently-used to write computer programs are so called &ldquo;programming languages&rdquo; such as C, C++, Python, *etc.* Other common computer languages sometimes used to write computer programs (usually alongside programming languages) include markup languages (like HTML and Markdown) and style sheet languages (like CSS). For example, the Atom text editor is written in CoffeeScript, HTML, JavaScript and CSS, where CoffeeScript and JavaScript are programming languages.

### Free and Open-Source Software
**Free and open-source software** (**FOSS**) refers to software who's source code is licensed such that it can freely shared, distributed, studied and even modified and re-released by anyone. FOSS licenses usually require that anyone that modifies and re-releases the source code gives some recognition to the original authors of the source code and some licenses (which are called **copyleft** licenses) even require that the modified source code be released under a similar (if not identical) license to the original source code. The most popular copyleft license is the GNU General Public License (GPL), while the most popular non-copyleft (or **permissive**) FOSS licenses include the BSD licenses and the MIT License.

### Proprietary Software
**Proprietary software** (**PS**) refers to software who's source code is licensed such that it cannot be freely and legally shared. PS is usually, for charge, that is you have to pay to use them. Although some PS is so called &ldquo;freeware&rdquo;, in other words, you can use it for free, but you cannot freely and legally access the program's source code.

### Fork
A **fork** or **project fork**, is when developers take a copy of the source code from one software project and start independently working on it (or developing it) themselves. In the FOSS world this is commonplace due to the relative lack of restrictions imposed by FOSS licenses.

### Downstream / Upstream
The terms **downstream** and **upstream** refers to the direction from and toward the original authors or maintainers of software that is distributed as source code, respectively.

### Back-End / Front-End
The terms **back-end** and **front-end** are used together to refer to a relationship between two programs. The front-end program runs the back-end program in the background (often without the user noticing), to perform a specified action (usually package management on this site), but usually the front-end has some higher-level features that it brings to the table, that the back-end program lacks. Quite often, on this site, I will refer to graphical package managers as being front-ends for a command-line package manager, which the graphical package manager will run in the background. What the graphical package manager brings to the table is a more intuitive user interface.

### Operating System
An **operating system** (**OS**) is the base set of system software that forms the foundation for other programs to run on top of. It manages all communication between the computer's hardware and the application software that run on top of it. At its heart, each OS has what is known as a kernel, which manages all communication with the computer's hardware. Notable examples of operating systems, include:

* FreeBSD
* Linux
* Mac OS
* MS-DOS
* OS X
* Windows 1.0 to Windows ME (including Windows 95 and 98)
* Windows NT (including Windows XP, Vista, 7, 8, 10, *etc*)

### Kernel
An operating system **kernel** is the piece of system software that manages all communication between a computer's hardware and its software. Most kernels also perform virtual memory allocation. Some of this virtual memory is allocated to the kernel (which is called **kernel mode**), the rest is allocated to the user's processes (or **user mode**, application software run in user mode). It is in many ways the operating system's brain, without it the OS will not work. There are three main types of operating system kernel, based on their respective design:

* **Hybrid kernel** &mdash; as its name suggest it is mid-way between the below designs. Examples include the kernels of OS X and Windows NT. Linus Torvalds, the lead and original developer of the Linux kernel, amongst others, believe that the **hybrid kernel** category is purely marketing and that these kernels fit quite easily into one of the following two categories.
* **Microkernel** (or **&mu;kernel**) &mdash; kernels that keep as few processes running in kernel mode as possible. They, as their name suggest, usually do the bare minimum needed of a kernel. Consequently, the number of lines of code in their source code is usually substantially less than their monolithic counterparts. Extreme variants of microkernels include nanokernels and picokernels, which have even fewer lines of source code. The most notable example is MINIX.
* **Monolithic kernel** &mdash; these are kernels that perform all operating system functions in kernel mode. They usually consist of far more lines of code than their microkernel counterparts. The most notable examples are the FreeBSD, Linux, NetBSD and OpenBSD kernels.

Microkernels are easier for software developers to work on and are supposedly more easily portable to additional instruction set architectures (ISAs). Despite this, the monolithic Linux kernel has been ported to the greatest number of ISAs of any operating system kernel.

### Unix
**Unix** (or **UNIX** for the trademark) is a family of operating systems that share several common characteristics and are certified as being compliant to at least one version of the **Single UNIX Specification** (**SUS**). These common characteristics are best summarized with what is sometimes called the "**Unix philosophy**". The Unix philosophy is that the operating system provides a set of simple command-line tools or utilities (which I will sometimes refer to as Unix utilities) that perform a limited, well-defined function, which usually involves manipulating components (like files) in the unified file system that is also characteristic of Unix systems. Additionally Unix systems also have what is known as a command language or shell scripting language, called a **Unix shell**, with which users can call on these simple tools. Unix is also notable in that it is designed to be easily portable to a variety of different computers (distinguished from one another, mostly by the details of their CPU).

### Unix-like
A **unix-like** operating system is one that behaves and to all the world seems like a Unix system, despite not being certified compliant to any version of the SUS. These systems can also be referred to as Unix clones. The only real practical difference between Unix and Unix-like systems are that Unix systems are usually developed by a commercial entity with the funds required to get their system SUS-certified.

### &#42;nix
**&#42;nix** is my shorthand way of referring collectively to both Unix and Unix-like systems. Despite this, you will also see other authors, including those that know far more than I do about these systems, using &#42;nix to refer to just Unix-like systems.

### Linux
**Linux** is a large family of Unix-like operating systems (its members are referred to, collectively, as Linux distributions) that share one common defining characteristic: they use the Linux kernel as their kernel. The Linux kernel is a predominantly free and open-source kernel developed by Linus Torvalds who first started developing the kernel in 1991 when he was a 21-year-old computer science student studying at the University of Helsinki in Finland. I used the phrasing "*predominantly* free and open-source" deliberately, as while most of the kernel's source code is licensed under the GNU GPL, there are some binary blobs on the kernel (which mostly just add to its compatibility with available hardware) that are not free and open-source.

### GNU
The **GNU Project** is a FOSS project that was first founded in the 1980s by Richard M. Stallman (or rms), its stated mission is to develop a free and open-source Unix clone. This clone is referred to as GNU, which is incredibly unpopular. The GNU Project provides the Unix utilities (contained in the GNU Coreutils package) and the Unix shell (called Bash) used by the vast majority of Linux distributions. Due to this some people refer to the family of operating systems known as Linux, as GNU/Linux.

### Free Software Foundation
The **Free Software Foundation** (**FSF**) non-profit organization set up by Stallman that advocates the widespread use of FOSS and was originally set up to hire people to develop software for the GNU Project. The FSF also provides its own set of predominantly copyleft licenses which includes the GNU GPL mentioned earlier.

### Linux-libre
The **Linux-libre kernel** is essentially the Linux kernel with its binary blobs removed. This makes the kernel entirely free and open-source, as these binary blobs are proprietary software. A comparatively small number of Linux distributions use the libre kernel, these distributions are often called GNU/Linux-libre distributions and are fairly unpopular compared to their non-libre counterparts.

### Berkeley Software Distribution
The **Berkeley Software Distribution** (**BSD**) is a Unix operating system that was developed at the University of California, Berkeley between 1977 and 1995. It was originally closed-source (that is, not open-source), but later releases were licensed under permissive BSD licenses. Since then several descendants of BSD have emerged with the most notable and popular one being FreeBSD. I use the terminology &#42;BSD to collectively refer to BSD and its descendants.

### Package Management System
A **package management system** (**PMS**, plural form: **PMSs**) or **package manager** is a collection of system software that automates the process of installing, configuring, removing and upgrading computer programs. Traditionally Linux PMSs were operated solely from the command-line but nowadays several graphical PMSs also exist.

### Software Repository
A **software repository** is essentially an archive of software packages from which package managers can download said packages and then install them.

### Linux distribution
A **Linux distribution** (**LD** or **distro**) is an individual, specific, operating system that uses the Linux kernel (that is, a specific member of the Linux family of operating systems). Most Linux distributions use GNU Project software for their Unix utilities, hence meaning that most Linux distributions can also be called **GNU/Linux distributions**. An LD consists of, at least, the following basic components:

* The **Linux kernel** (or the **Linux-libre kernel**, in some cases)
* **GNU Project software**, such as Bash, the coreutils package, glibc, *etc.*
* A **package management system**, such as APT, DNF, Entropy, pacman, Portage, *etc.*

### File Archive
A **file archive** is a type of file, that stores one or more files, potentially with associated metadata, in a more portable and easily-compressed format. On Linux and other &#42;nix systems, the most common type of file archive is a tar archive (which have the `.tar` file extension), with rar archives (file extension: `.rar`) being a popular alternative, especially for non-Linux platforms such as Windows. `tar` is a basic Unix utility, the specifics of this utility, its syntax, supported file formats, *etc.* is dependent on the &#42;nix system it belongs to. Most Linux distributions use GNU tar as their default tar utility, but also have FreeBSD's tar (usually called by the `bsdtar` command) utility available from their software repositories. 

## Acronyms
{% include Layouts/note.md note1="Acronyms covered in the previous sections are not repeated in this list." note2="Hyperlinks are to sources that explain, in greater detail, the term." %}

* **ABS**: [**Arch Build System**](https://wiki.archlinux.org/index.php/Arch_Build_System), a system whereby all the PKGBUILDs, patch files and assorted other files used to build packages in the pacman repositories are stored in subdirectories of `/var/abs`. It is essentially Arch's equivalent to the Portage Tree.
* **AUR**: [**Arch User Repository**](https://wiki.archlinux.org/index.php/Arch_User_Repository), a repository of Arch user-supplied PKGBUILDs, patch files and assorted other files that, while they are not used to build any packages in the pacman repositories, can (provided they do not have any bugs preventing them from building successfully, that is) be used to build Arch packages locally (on their own Arch machine) by users.
* **Deb**: the package format used by Debian's dpkg package manager.
* **PC**: **Personal computer**. Can be a desktop or laptop, does not matter if it once ran OS X or Windows, still to me it is a PC.
* **RPM**: [**RPM Package Manager**](http://rpm.org/), originally **Red Hat Package Manager**. This is the name of both a package manager and the package format used by this package manager.
