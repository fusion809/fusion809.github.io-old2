---
title:       "Free Text Editors and Integrated Development Environments for Linux: an Overview"
date:        2016-04-30 +1000
categories:  text-editors, integrated-development-environments, free-software, comparisons
layout:      post
permalink:   /free-text-editors-and-ides/
---

**Text editors** (**TEs**) are essential tools for software developers, blog writers, note-tackers and people working in numerous other fields. This post covers *some* free text editors and integrated development environments (IDEs) that are available for Linux. This post will not cover every text editor and IDE that is available (for a post that does this, for free and open-source TEs and IDEs, at least, see [*A Comparison of Free and Open-Source Text Editors and IDEs for Manjaro and Sabayon Linux*](/comparison-of-text-editors/)), but it will cover those I have taken a particular liking to. Only one proprietary, but free (as in freeware, that is, it costs the end-user nothing to use it legally, but it is licensed under a proprietary license) TE will be compared, namely Sublime Text, all other TEs and IDEs compared will be free and open-source. TEs and IDEs to be compared include:

{% capture content %}
* [**Atom**](#atom)
* [**Brackets**](#brackets)
* [**Codebox**](#codebox)
* [**gedit**](#gedit)
* [**GNU Emacs**](#gnu-emacs)
* [**GNU nano**](#gnu-nano)
* [**Kate**](#kate)
* [**Komodo Edit**](#komodo-edit)
* [**LightTable**](#lighttable)
* [**Sublime Text**](#sublime-text)
* [**Vim**](#vim)
* [**Visual Studio Code**](#visual-studio-code)
{% endcapture %}
{% include Layouts/column.html no="3" content=content %}

## Atom
{% include Links/image.html image="Atom/Atom-1.7.2.png" width="100%" description="The Atom text editor (v1.7.2) opened to this very blog post, with an embedded terminal (provided by the `terminal-plus` package) shown" float="none" %}

**Atom** is a free, MIT-licensed text editor that is built using web technologies and developed by GitHub. It started out as a side project of Chris Wanstrath, one of GitHub's founders, in mid 2008. It is built using the Electron (previously called Atom Shell) framework for buildng cross-platform desktop applications using web technologies. It is extensively customizable, yet also simple enough, for someone that has never used a text editor in their life, to pick up in no time without help. Despite this it is a large application with its binaries being &gt;50 MB and taking up &gt;200 MB hard drive space when installed, additionally its boot times are fairly long and it is only in the official repositories of two Linux distributions that I am aware of, namely, Gentoo Linux and Sabayon Linux. Further details about it can be found in the [*Running Atom on Linux*](/running-atom-on-linux) post.

Details on installing Atom on Linux can be found in the [*Installing Atom*](/running-atom-on-linux/#installing-atom) section of the *Running Atom on Linux* post. 

The following subsections will be focused on its purpose-specific merits.

### Blog Writing
For the purpose of blog writing Atom has the following helpful features:

* It has in-built syntax-highlighting, previewing and snippeting support for GitHub-flavoured markdown (GFM). It also has in-built syntax-highlighting, auto-indentation and snippet support for HTML and, with the help of a plugin (`atom-html-preview`), it is also possible to preview HTML files in Atom. Syntax-highlighting, previewing and snippet support is also obtainable, using plugins, for asciidoc and textile.
* It is also possible to work with git from within Atom, using the bundled plugin, `git-plus`, which can be handy when dealing with a static site generator operating on a git repository like one for GitHub Pages.
* It is possible to legalize

## Programming
