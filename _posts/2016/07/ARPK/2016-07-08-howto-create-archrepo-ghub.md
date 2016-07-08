---
date:             2016-07-08 +1000
title:            "How to Create Your Own Arch Linux Package Repository, For Free"
permalink:        /how-to-create-archlinux-repository/
categories:       archlinux, package-development, software-repositories
layout:           post
draft:            "yes"
last_modified_at: 2016-07-08 21:46:00 +1000
---

**Arch Linux** is my favourite Linux distribution (LD), especially when it comes to building packages. This is because the PKGBUILD format is very intuitive, simple and written in my favourite programming language &mdash; Shell. Writing a PKGBUILD also does not require an awful lot of preliminary knowledge, unlike the other Linux packaging source file written in Shell, that I have a fair amount of experience with, ebuilds. They (ebuilds) require you understand eclasses, in a fair degree of detail, in order to effectively and efficiently write them. The fact that Arch Linux package development only requires that you have a functioning PKGBUILD and does not require a whole intricate directory of syntactically-correct source files to be written by you, the packager, makes Arch Linux packages easier to develop compared to say Debian packages. The packaging source files they most closely resemble are SlackBuilds for Slackware packages, which I have fairly minimal experience with.

As a little aside, Shell is my favourite programming language as it is the one that is the most intuitive to me. I have found Python to be too touchy,[^1] and challenging to debug, while I have found JavaScript (JS) too non-intuitive and challenging to pick up. Granted, I work best by trying out some practical examples and the only examples I can come up with for myself, when it comes to JS and Python, are those in a previous area of study of mine &mdash; technical computing. Unfortunately, I have no clear concept of a program I want to write, besides from examples from technical computing, so it is challenging for me to feel motivated to keep persevering when trying to learn these languages and obstacles arise. If you have a way around this for me, that is free,[^2] I would love to hear it, so please email these suggestions to [brentonhorne77@gmail.com](mailto:brentonhorne77@gmail.com).

## PKGBUILD Format
{% include Layouts/notei.md note1="This is a brief introduction, but if you want any degree of detail I would probably see the [PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD) article at _The Arch Wiki_. Alternatively, refer to the [PKGBUILD(5)](/man/PKGBUILD.5.html) man page." %}

PKGBUILDs are fairly simple shell scripts, usually no longer than 50 lines long, but it is still important that their formatting is correct, as otherwise they will fail to build when `makepkg` is run, or they will produce unexpected results. PKGBUILDs have the following components to them, in order:

* **Header** &mdash; these are comments that, while not strictly necessary for the PKGBUILD to work, they can be handy to define important information about the PKGBUILD like who is maintaining it, who has contributed to it and their contact information. For example, my PKGBUILDs usually have the header:

<div class="language-bash highlighter-rouge"><pre class="highlight"><span class="c"># Maintainer: Brenton Horne &lt;brentonhorne77 at gmail dot com&gt;</span></pre></div>

* **Variable definitions** &mdash; these are specified in the first ten or so lines after the header. The default fields include:[^3]<sup>,</sup>[^4]<sup>,</sup>[^5]<sup>,</sup>[^6]

  - `pkgname` <sup>AM</sup> &mdash; the name of the package(s). Sometimes a PKGBUILD will build more than one package, in these instances the packages are usually interconnected and often use the same sources.
  - `pkgdesc` <sup>P</sup> &mdash; a description of the package. Usually no longer than one sentence long.
  - `pkgver` <sup>MP</sup> &mdash; the upstream version of the package. No hyphems or whitespaces are allowed here,
  - `pkgrel` <sup>MP</sup> &mdash; the revision number of the Arch Linux package,[^7] since the last `pkgver` update.
  - `arch` <sup>AMP</sup> &mdash; the supported architecture(s) for the package. Only `i686` and `x86_64` are officially supported, although a project to port Arch Linux to Raspberry Pi PCs is underway and packages for these PCs have support for `arm` family processors. Architecture-independent packages (which are mostly themes and small packages) will have `any` in the `arch` field.
  - `url` <sup>A</sup> &mdash; the website of the package. Its source [Version Control System](https://en.wikipedia.org/wiki/Version*control) (VCS) repository can also be used. For example, the `atom-editor` package uses the URL of Atom's GitHub repository &mdash; `https://github.com/atom/atom`.
  - `depends` <sup>AP</sup> &mdash; where the run-time dependency(s) of the package are defined.
  - `makedepends` <sup>AP</sup> &mdash; where the build (or make) dependency(s) of the package are defined, **if** they are *not* also run-time dependencies.
  - `license` <sup>AP</sup> &mdash; the license of the package's upstream source(s). Not strictly mandatory but `makepkg` will whinge if you leave it undefined and your package will not be accepted if you upload it to the Arch User Repository (AUR). Run `ls /usr/share/licenses/common` to list the licenses available by default. The copy of other licenses (e.g., BSD, MIT, *etc.*) that comes with your package's upstream source(s) will need to be installed in your `package()` function to `/usr/share/licenses/${pkgname}`.
  - `conflicts` <sup>AP</sup> &mdash; package(s) that conflict with the package being built.
  - `provides` <sup>AP</sup> &mdash; what does this package provide?[^8] For example, `efl` would be an appropriate field for `efl-git`.
  - `replaces` <sup>AP</sup> &mdash; which package(s) does this package replace? This is appropriate when naming changes between package versions, or when a program is renamed. For example, the Electron framework on which the Atom text editor and Visual Studio Code are built was previously called "Atom Shell". So it would be appropriate for an Electron PKGBUILD to include `atom-shell` in its `replaces` field.
  - `source` <sup>A</sup> &mdash; the upstream source(s) for the package, along with any patches, desktop configuration files, *etc.* you intend to use to build the package.
  - `md5sums/sha1sums/sha256sums/sha512sums` <sup>A</sup> &mdash; checksums for the sources specified in `source`. If you are wondering how to fill out this field, just pick one checksum type (e.g., `md5sums`) and write it as `md5sums=('SKIP')` and then run `updpkgsums` in the PKGBUILD's directory and it will generate the checksums for you.
  - `validpgpkeys` <sup>A</sup> &mdash; this is very much an optional field and is seldom ever included, except for in packages that pose significant security threats if invalid, or for core system components (like the kernel). If used the upstream source likely provides the signing files (usually with the `.asc` or `.sig` file extensions), which must be specified in the `source` array.
  - `install` <sup>A</sup> &mdash; install file(s) for the package(s), which contains functions run before, during and after the installation of the package(s). Most of these relate to icon caches and desktop configuration databases.

* **Function definitions** &mdash; these are lines that come after variable definitions wherein functions recognized by `makepkg` are defined. Some extra variables are available for use in these functions, such as `$srcdir`, `$pkgdir`, *etc.*. `$srcdir` is the directory where the sources are to be extracted, prepared and compiled. `$pkgdir` is where the package's files are stored before they are compressed, metadata files created and added to the package archive and finally the package is built. `$pkgdir` has the structure `pkg/$pkgname/<FS>` where `<FS>` are the contents of the package in the location relative to `pkg/$pkgname` they are to be installed to your live file system. Such functions include, in order of their usual appearance:

  - `pkgver()` &mdash; a function that nearly only ever appears in packages that are built from VCS sources. Whatever it returns will be used to replace the `pkgver` value defined earlier in the PKGBUILD.
  - `prepare()` &mdash; a function that prepares the package sources, making them ready for the functions that come afterwards. `makepkg` will automatically extract any archives (including `.deb` and `.rpm` archives, although it will **not** decompress any archives contained within them) for you before running what you define in your `prepare()` function. Usually the `prepare()` involves applying patches, editing source files (like with `sed`), decompressing source contents, *etc.*
  - `build()` &mdash; a function that compiles the source code. This usually involves running `./autogen.sh ...` and/or `./configure ...` and `make` in the source directory.
  - `package()` &mdash; a function that moves the package components to the appropriate locations in the `$pkgdir` directory. If your PKGBUILD builds more than one package there should be more than one `package()` function. Named `package_<PKG1>()`, `package_<PKG2>()`, `package_<PKG3>()`, *etc.* Where `<PKG1>` is the name of the first package in the `pkgname` array, `<PKG2>` is the name of the second package, *etc.*

## Writing a PKGBUILD
Now that we understand the basics of a PKGBUILD's layout, I will discuss some which text editors are best adept at writing PKGBUILDs and where to get help, if you get stuck.

### Text Editors
Most modern text editors have in-built syntax-highlighting support for Shell, a few of them even automatically syntax-highlight PKGBUILDs as shell scripts. Open-source text editors that I know[^9] that automatically syntax-highlight opened PKGBUILDs as shell scripts, include:[^10]<sup>,</sup>[^11]<sup>,</sup>[^12]

* [Atom](https://aur.archlinux.org/packages/atom-editor)<sup>AUR,W</sup>
* [GNU Emacs](https://www.archlinux.org/packages/extra/x86_64/emacs)
* [Kate](https://www.archlinux.org/packages/extra/x86_64/kate)
* [KWrite](https://www.archlinux.org/packages/extra/x86_64/kwrite)
* [Vim](https://www.archlinux.org/packages/extra/x86_64/vim)
* [Visual Studio Code](https://aur.archlinux.org/packages/visual-studio-code-oss)<sup>AUR,W</sup> (VSCode)

#### Atom
Atom is definitely the best text editor for the job &mdash; at least, in my opinion, this is, in part, because its syntax-highlighting, with my [`language-unix-shell`](https://atom.io/packages/language-unix-shell) package is far more detailed than syntax-highlighting by other packages. It is also because my [`language-archlinux`](https://atom.io/packages/language-archlinux) package provides extra commands for performing common Arch Linux development tasks in Atom. In my opinion, it is best to get Atom from my PKGBUILDs repository, as these packages contain a package of mine that provides better, more comprehensive, syntax-highlighting for Shell, and extra commands for working with PKGBUILDs, *etc.* My most helpful packages at the time of writing this, includes:

* `atom-bleeding` &mdash; the latest stable build of Atom designed to work on the latest stable releases of APM and Electron, both built from source and provided by different packages. If you use this package with 64-bit Arch Linux, I would strongly recommend you use my binary repository and do not build everything yourself from source code. This is because the total compile time can easily take over 3 hours, during much of this time your PC will be grinding to a hault, speed-wise. This package has several core packages missing, so that they can be managed with APM. This will allow your packages to be more up-to-date. To install it and all packages I recommend (especially for Arch Linux package development) running:

<div class="language-bash highlighter-rouge"><pre class="highlight">/bin/bash -c <span class="s2">"</span><span class="k">$(</span>curl -sL https://git.io/vKvcY<span class="k">)</span><span class="s2">"</span></pre></div>

* `atom-editor-arch` &mdash; the latest stable build of Atom, build with the default versions of APM and Electron. Has a few extra packages installed for Arch Linux development.
* `atom-editor-base` &mdash; the latest stable build of Atom, build with the default versions of APM and Electron. All non-essential packages removed so that they can be managed with APM. All core packages have been replaced with the latest versions available.

#### Visual Studio Code
The [`visual-studio-code`](https://aur.archlinux.org/packages/visual-studio-code) AUR package is not free and open-source, rather it is licensed under a proprietary End-User License Agreement (EULA). The link I provided earlier for a VSCode AUR package was for the open-source version of this package, which is built from source code. This OSS build has no extension installer, which can make it a pain to install extra extensions. If you want, an extension installer, yet still OSS build of VSCode, I recommend using my `code-oss` package. You can install it via running:

<div class="language-bash highlighter-rouge"><pre class="highlight"><span class="k">if</span> <span class="sb">`</span>cat /etc/pacman.conf | grep <span class="s2">"pkgbuild-current"</span> &gt; /dev/null 2&gt;&amp;1<span class="sb">`</span>; <span class="k">then
  </span>sudo <span class="nb">printf</span> <span class="s1">'[pkgbuild-current]\nServer = https://github.com/fusion809/PKGBUILDs/releases/download/current/\nSigLevel = Optional TrustAll'</span> &gt;&gt; /etc/pacman.conf
<span class="k">fi

</span>sudo pacman -Syuu code-oss --noconfirm --needed</pre></div>

### Help
When writing your own PKGBUILD it is usually best to attempt to debug your package yourself, when you can. This is because the experience and knowledge it will give you will likely be well worth the extra effort. Plus, of course, we have to be mindful of our (by "our", I mean the free and open-source software community) limited resources, the most relevant resource when it comes to getting help is, of course, other people's spare time. If you fail to fix the error yourself, Google it, see if anyone else has experienced a similar error and if so, was it handled in a way that may be of use to you? If these two separate attempts to fix the problem fail, you have two main options as to how to proceed:

* Ask for help at the Arch Linux forums. The Arch Linux forums can be an obstacle to newcomers, the key is:

  * Give them every detail you can. The bare minimums are your PKGBUILD and your error message(s). With your error message(s) it is important to include at least ten extra lines of output that precedes the actual error message, in order to give those that wish to help you, some much-needed context for the error.
  * Explain your efforts to fix the problem so far. This is especially important as in my experience, if you do not do this, you will have some people calling you a help vampire.

* Ask someone you know, for help. I am willing to help, if I can but keep in mind I am not perfect, sometimes I will not have an answer for you. Other times I may be too busy with my own work to help you.

## Building a Package
After you have written a PKGBUILD you would like to build a package from (beware odds are you will encounter the odd error while doing this, especially if you are new to Arch Linux packaging) run `makepkg` from the directory in which your PKGBUILD is stored. If your package has some build dependencies that you do not have installed you will need to run `makepkg -s` instead, provided these packages are in your presently-enabled (in `/etc/pacman.conf`) list of package repositories. This will, if successful, build a binary package for your current PC architecture in your present working directory. It will be called:

<div class="language-bash highlighter-rouge"><pre class="highlight"><span class="nv">$pkgname</span>-<span class="nv">$pkgver</span>-<span class="nv">$pkgrel</span>-<span class="nv">$ARCH</span>.pkg.tar.xz</pre></div>

where all these variables are as they were defined in the previous section, except `$ARCH` which is your current system's architecture. If the package is architecture-independent `$ARCH` will be replaced with `any`. If your package builds successfully I recommend you run `namcap` on it, to search for some common packaging errors you may have made. This may include missing dependencies, or dependencies included that are not needed, missing license files, *etc.* You can also run `namcap` on your PKGBUILD, to check if it is correctly-written. See [this gist](/aa04e92372414e3a05ddf7020c5d905f/) for an example output of `makepkg` running successfully. `makepkg`, when run, does the following actions (which it tells you about, so you can skip the rest of this section if you want, this is for those that want some details), in order (if I am missing some actions feel free to [email me](mailto:brentonhorne77@gmail.com)):

* It downloads any needed sources, or if the sources are a VCS repository that has already been downloaded, it will update the local copy of this repository.
* It verifies the sources using the checksums provided, and (optionally) the GPG keys provided.
* It runs `prepare()` on the sources.
* It runs `pkgver()` if provided. Then it updates the `pkgver` field in the PKGBUILD, accordingly.
* It removes any existing `$pkgdir` directory(s).
* It runs `build()` if provided.
* For each package specified in the PKGBUILD it:
  * Enters the fakeroot environment. This is designed as a safety measure against potential security threads in the `package()` function.
  * It runs `package()` and variations thereof (like `package_<PKG1>`, `package_<PKG2>`, `package_<PKG3>`, *etc.*).
  * It 'tidies' the install, which means:
    * It removes libtool files, static library files and other unwanted files
    * Compresses man and info pages
    * Removes unneeded symbols and libraries from the binaries and libraries.
  * It checks for packaging issues, like `$srcdir` and `$pkgdir` being mentioned in files in the `$pkgdir` directory. If there is one, you will be left to fix it yourself. NPM packages with several dependencies are bad for this, see quite often the `package.json` of these dependencies will have `$srcdir` specified in them.
  * Generates the `.MTREE`, `.BUILDINFO` and `.PKGINFO` files, and adds any install file specified.
  * Compresses the package using tar and xzip.
  * Exits the fakeroot environment.

## Setup A Repository
You can set up an unofficial Arch Linux package repository, given that you can provide the following:

* A **server** you have reliable[^13] write access to, but that no one else, aside from some trusted individuals that may be collaborating on your repository with you, has write access to. This server should have a reliable and high-speed network connection, so that packages can be easily and rapidly downloaded from it. This is where the cost element comes in. Setting up your own web server is costly, hence the significance of this post.
* An **Arch Linux system**, or some other Linux distribution with the required tools (such as pacman's `makepkg` and `updpkgsums` utilities) for building Arch Linux packages. This system is one you need to have easy access to and it must be easily possible to transfer your package files (which may be quite large in some instances) to your server. An Arch Linux `namcap` can be handy for checking packages for common errors.

Now this post is about setting up a free Arch Linux package repository, and there are only two ways of doing this that I have experience with and are aware of (if there are more ways of doing this, especially ones that can be managed from the command-line and have great download speeds, please do tell me in an email [brentonhorne77@gmail.com](mailto:brentonhorne77@gmail.com)). These methods are:

* Via the **Open Build Service** (**OBS**) &mdash; this is a great method if you are packaging free software,[^14] that is infrequently updated, does not require a network connection in the `build()` function and if you are only building a small number of packages. The OBS itself requires you to gain some extra knowledge, in order to use it effectively. The main advantage of this method over the GH method, in my opinion, is that it can be managed from the command-line, so you can automate package updates using shell scripts. It can also be accessed from a web interface ([https://build.opensuse.org](https://build.opensuse.org)), which is mostly handy when you are on system where the command-line client, `osc`, is either not available or not working. Its major disadvantages are that:
  1. It does not provide internet access during the `build()`, or any other function.
  2. It does not have access to the `[community]` repository (for satisfying build dependencies), which means that sometimes you will have to build some extra packages from the `[community]` repository in order to satisfy your package's build dependencies. When it comes to Python packages this can become particularly ugly with circular dependencies.
  3. PKGBUILDs will likely need some modification in order to be suitable for the OBS. Most of these modifications are fairly minor, but they can get irritating, especially when you are copying packages and their dependencies over from the AUR or `[community]` repositories.
  4. Package databases can take awfully long to update after a package is updated. This is especially true if you have quite a few packages you are building.
  5. If you have more than a small handful of packages to build, the download speeds and build speeds of your packages can really lag behind what you would likely expect or want. Sometimes packages will fail to download altogether!
  6. The help available for OBS-related issues is via the [OBS Forums](https://forums.opensuse.org/forumdisplay.php/692-Open-Build-Service-(OBS)) (which is hosted by the openSUSE Forums) and while they try to help,[^15] I have found that unless your issue also affects the building of openSUSE packages, they are unlikely to be of much help.
* Via **GitHub** (**GH**) &mdash; this is my favourite method of hosting binary packages. You can tag a release in GitHub and add binary packages to a tagged release ([here](https://help.github.com/articles/creating-releases/) is the official GitHub documentation on how to do this from a web-browser). Although it is important to remember to include your Arch Linux package database files (of which there should be four). These are files generated using the command: `repo-add <ALRN>.db.tar.gz <PACKAGES>`. Where `<ALRN>` is the name of your Arch Linux repository[^16] and `<PACKAGES>` is the relative (or absolute, but relative is good enough) path of each of your binary package(s). Then your Arch repository will have the `Server=` field (for your `/etc/pacman.conf` file):

<div class="language-bash highlighter-rouge"><pre class="highlight">Server <span class="o">=</span> https://github.com/&lt;USER&gt;/&lt;REPO&gt;/releases/download/&lt;TAG&gt;/</pre></div>

where `<USER>` is the username field of the repo (that is, who owns it, or if it belongs to an organization, which organization owns it). `<REPO>` is the name of the repository. `<TAG>` is the name of the tag. For example for my (fusion809) `PKGBUILDs` repo's `current` tag I would use the `Server` field:

<div class="language-bash highlighter-rouge"><pre class="highlight">Server <span class="o">=</span> https://github.com/fusion809/PKGBUILDs/releases/download/current/</pre></div>

A natural question is, "How do I update my tagged release so that it is for the latest commit, without loosing the binary packages I have already attached?" The answer is that I do not know. I do not think it is possible, especially considering [this StackOverflow Answer](http://stackoverflow.com/a/8044605/1876983), which seems to indicate that to do this you need to delete your original tag and create a new tag of the same name. I have found their download speeds amazing (up to 3 MB/s), and they have no specific limit on the total size of the packages you upload to a release. The maximum size of an individual package is capped at 2 GB and quite frankly I have never heard of an individual Arch Linux package that is even 1 GB in size.

GH package databases are updated as soon as your binaries and database files have been uploaded, so this is certainly an efficient means of disseminating your packages to your friends, colleagues and others.

## Footnotes
[^1]: That is, it does not take much of an error to stuff an entire script up.
[^2]: As I may later mention, I am a cheap so-and-so, always opting for the free option where possible.
[^3]: Presented in their *usual*, but **not** mandatory order. Not every single default variable is listed, if you want a list see the [PKGBUILD(5)](/man/PKGBUILD.5.html) man page.
[^4]: An <sup>A</sup> superscript denotes that this variable can be an **array**.
[^5]: <sup>M</sup> superscripts denote a mandatory field.
[^6]: A <sup>P</sup> superscript denotes that this variable should be defined under the individual package's `package_...()` function, **if** the `pkgname` variable is an array. If the variable is defined outside of the package's individual package_...() function, then it will be applied to **all** packages specified in the PKGBUILD.
[^7]: This version number does **not** come from the upstream source, it is a revision number for the PKGBUILD.
[^8]: **Excluding** `$pkgname` &mdash; this is automatically added to this array when `makepkg` is run.
[^9]: If there are some open-source text editors I am missing that you know for a fact can run on Arch Linux (that is, you have installed them yourself and they run fine) and have automatic syntax-highlighting for PKGBUILDs.
[^10]: Hyperlinks are to the editor's Arch Linux package description page, if there are more than one due to architecture differences I will link to the 64-bit version of the package.
[^11]: An <sup>AUR</sup> superscript indicates that this package is provided by the AUR and other unofficial sources
[^12]: A <sup>W</sup> superscript indicates that I would not recommend installing the version of this package linked, as I have a better build. See below for details.
[^13]: That is, one you can communicate with easily, without fear that the server will be down for server hours at a time and not available for you to communicate with.
[^14]: It cannot be licensed under a proprietary license, even if it is a freeware license!
[^15]: Keeping in mind that these people are all volunteers &mdash; they are not being paid a dime for this!
[^16]: Which, for your information, can be different from your GitHub repository's name.
