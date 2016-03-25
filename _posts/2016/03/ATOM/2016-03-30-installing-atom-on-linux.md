---
layout:     post
date:       2016-03-30 +1000
title:      "How to install Atom on Linux"
categories: atom, linux, software-installation
permalink:  /installing-atom-on-linux/
---

[**Atom**](https://atom.io) is a free and open-source[^1] text editor built on web technologies and developed by GitHub.[^2] Its development was started by GitHub founder, Chris Wanstrath ([@defunkt](http://github.com/defunkt)), in mid 2008, as a side-project. He envisioned a text editor that was extensively hackable, yet beginner-friendly enough for a primary school student to pick it up without a problem. Sort of like the love-child of GNU Emacs and Notepad. Its development was put on hold by Wanstrath in favour of developing his main project, GitHub, which had only been founded mere months earlier. Later Atom's development was picked back up, with its first public release being in 2014. Later in June 2015 its first stable release (Atom 1.0) was made.[^3]

Atom is built using [**Electron**](https://electron.atom.io), a framework formerly known as **Atom shell**, that is used to build cross-platform stand-alone applications using web technologies. Electron's source code is based on that of Chromium, the open-source web browser, who's source code is used as a basis for the closed-source Google Chrome web browser. Atom is essentially like a web browser that has been modified to be used as a text editor. You can plainly see the similarities by pressing the keyboard shortcut <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>, which will open the developer tools in both Atom and Google Chrome.

Atom can be extensively extended by means of packages and themes written in the same computer languages that Atom itself is written in: CoffeeScript, CSS, JavaScript and Less. Some of these packages and themes even come bundled, or pre-installed, with Atom. By means of its packages it is possible for you to have an embedded terminal in Atom (a functionality provided by the [`terminal-plus`](https://atom.io/packages/terminal-plus) package), do git commands without a terminal (a functionality provided by the pre-installed package, [`git-plus`](https://atom.io/packages/git-plus)), compile source code (using the [`build`](https://atom.io/packages/build) package), run scripts (such as Python scripts, this functionality is provided by the [`script`](https://atom.io/packages/script) package), *etc.* 

{% include_relative 01-footnotes.md %}
