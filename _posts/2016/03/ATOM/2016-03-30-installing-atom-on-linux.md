---
layout:     post
date:       2016-03-30 +1000
title:      "How to install Atom on Linux"
categories: atom, linux, software-installation
permalink:  /installing-atom-on-linux/
---

[**Atom**](https://atom.io) is a free and open-source[^1] text editor built on web technologies and developed by GitHub.[^2] Its development was started by GitHub founder, Chris Wanstrath ([@defunkt](http://github.com/defunkt)), in mid 2008, as a side-project. He envisioned a text editor that was extensively hackable, similarly to the existing text editors GNU Emacs and Vim, yet beginner-friendly enough for a primary school[^3] student to pick it up without a problem.[^4] Sort of like the love-child of GNU Emacs and Notepad. Its development was put on hold by Wanstrath in favour of developing his main project, GitHub, which had only been founded mere months earlier. Later Atom's development was picked back up, with its first public release being in 2014. Later in June 2015 its first stable release (Atom 1.0) was made.[^5]

Atom is built using [**Electron**](https://electron.atom.io),[^6] a framework formerly known as **Atom shell**, that is used to build cross-platform stand-alone applications using web technologies. Electron's source code is based on that of Chromium, the open-source web browser, who's source code is used as a basis for the closed-source Google Chrome web browser. Atom is essentially like a web browser that has been modified to be used as a text editor. You can plainly see the similarities by pressing the keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>, which will open the developer tools in both Atom and Google Chrome. Atom also uses the [Node.js](https://nodejs.org) JavaScript runtime engine.  

Despite being user-friendly, Atom does share quite a few similarities to GNU Emacs, namely that it is extended using packages that are written in at least one of the same computer languages it itself is written in. For GNU Emacs this computer language is Emacs Lisp (or ELisp), while with Atom these languages are web languages including CoffeeScript, CSS, JavaScript and Less. Atom and GNU Emacs also share the common characteristic Some of Atom's packages and themes even come bundled, or pre-installed, with Atom. By means of its packages it is possible for you to have an embedded terminal in Atom,[^7] do git commands without a terminal,[^8] compile source code,[^9] run scripts,[^10] *etc.* Packages and themes are installed using Atom's own package manager, `apm`, which is sort of like a modified version of Node's `npm` package manager.

{% include_relative 01-footnotes.md %}
