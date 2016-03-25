---
layout:     post
date:       2016-03-30 +1000
title:      "How to install Atom on Linux"
categories: atom, linux, software-installation
permalink:  /installing-atom-on-linux/
---

{% include Links/image.html image="Atom/Atom-1.6.0-%5BATOM%5D-Post-25-Mar-2016-16:30.png" width="1130px" float="none" description="Atom 1.6.0 opened to the source of this very post on *The Hornery*." %}

[**Atom**](https://atom.io) is a free and open-source[^1] text editor built on web technologies and developed by GitHub.[^2] Its development was started by GitHub founder, Chris Wanstrath ([@defunkt](http://github.com/defunkt)), in mid 2008, as a side-project. He envisioned a text editor that was extensively hackable, similarly to the existing text editors GNU Emacs and Vim, yet beginner-friendly enough for a primary school[^3] student to pick it up without a problem.[^4] Sort of like the love-child of GNU Emacs and Notepad. Its development was put on hold by Wanstrath in favour of developing his main project, GitHub, which had only been founded mere months earlier. Later Atom's development was picked back up, with its first public release being in 2014. Later in June 2015 its first stable release (Atom 1.0) was made.[^5]

Atom is built using [**Electron**](https://electron.atom.io),[^6] a framework formerly known as **Atom shell**, that is used to build cross-platform stand-alone applications using web technologies. Electron's source code is partly borrowed from Chromium, the open-source web browser, who's source code is used as a basis for the closed-source Google Chrome web browser. Atom is essentially like a web browser that has been modified to be used as a text editor. You can plainly see the similarities by pressing the keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>, which will open the developer tools in both Atom and Google Chrome. Atom also uses the [Node.js](https://nodejs.org) JavaScript runtime engine.  

Despite being user-friendly, Atom does share quite a few similarities to GNU Emacs, namely that it is extended using packages and themes that are written in at least one of the same computer languages it itself is written in. For GNU Emacs this computer language is Emacs Lisp (or ELisp), while with Atom these languages are web languages including CoffeeScript, CSS, JavaScript and Less. Atom and GNU Emacs also share the common characteristic of being free and open-source, cross-platform and being rather heavy, in terms of their download/installed size, and having a fairly long start-up time, compared with other text editors like gedit or Vim.

## Atom Plugins
As previously mentioned Atom's capabilities and appearance are usually modified or extended by use of **packages** and **themes**, respectively. Henceforth, to save some space, I will refer to packages and themes, collectively, as **plugins**. Some of Atom's plugins even come bundled, or pre-installed, with Atom, while the rest are installed using Atom's own package manager, `apm`, which is sort of like a modified version of Node's `npm` package manager. Using packages it is possible for you to:

* Use an embedded terminal in Atom[^7]
* Run git commands without a terminal in Atom[^8]
* Compile source code[^9]
* Run script files[^10]
* Preview markup files (like those written in markdown)
* Preview colours described by hexadecimals, RGB combinations and alike in Less or CSS style sheets[^11]
* Quickly synchronize the Atom plugins you have installed on two or more different machines.[^12]

At the time of writing this post there were 3,865 packages and 1,161 themes for Atom available from [https://atom.io/packages](https://atom.io/packages/) and [https://atom.io/themes](https://atom.io/themes), respectively. These packages and themes are those that have already been built by the community, or by the Atom developers themselves, but everyone is completely free to develop their own packages and themes for Atom. Unfortunately, some of these packages and themes will be for older versions of Atom and may not be compatible with the latest releases.

{% include Links/image.html image="Atom/pigments-versions-tab.png" width="full" float="none" description="This is how one checks out the available versions of a package at https://atom.io/packages. Click the &ldquo;Versions&rdquo; tab circled in red" %}

What I do to check whether a package or theme is likely to work with the current version of Atom is I check out when the latest release of the package or theme was made. If it was within the last month it is a fair bet it will be compatible with the current version of Atom, if not, but it was updated within the past six months, then there's a chance it might work with the latest release of Atom, but I would not hold out too much hope that it will work exactly as it should. If it was last updated prior to the release of Atom 1.0 (25 June 2015) I would not even bother trying it unless I have a burning desire to use its functionalities. Unfortunately, Atom's [packages](https://atom.io/packages) and [themes](https://atom.io/themes) repositories' search engine (that is, how you search for the package/theme you want in the web browser of your choice) is very basic, so I cannot exclude packages that have not been updated within the past six months. Rather I have to look for packages/themes and then when I find one I think will like I have to go to its description page and press on the "Versions" tab.

{% include_relative 01-footnotes.md %}
