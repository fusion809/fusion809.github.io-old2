---
title:       A Comparison of Free Text Editors
date:        2016-04-30 +1000
categories:  text-editors, foss, comparisons
layout:      post
permalink:   /free-text-editors/
---

**Text editors** (**TEs**) are essential tools for software developers, blog writers, note-tackers and people working in numerous other fields. This post covers free and open-source text editors that are available for Linux. This post will not cover proprietary text editors and what I consider integrated development environments (IDEs). The distinction between IDEs and TEs is greatly subject to opinion, so if I include some programs you consider IDEs, please keep this fact in mind.

## Atom
{% include Links/image.html image="Atom/Atom-1.7.2.png" width="100%" description="The Atom text editor (v1.7.2) opened to this very blog post, with an embedded terminal (provided by the `terminal-plus` package) shown" float="none" %}

**Atom** is a free, MIT-licensed text editor that is built using web technologies and developed by GitHub. It is built using the Electron (previously called Atom Shell) framework for building cross-platform desktop applications using web technologies. It is extensively customizable, yet also simple enough, for someone that has never used a text editor in their life, to pick up in no time without help. Despite this it is a large application with its binaries being &gt;50 MB and taking up &gt;200 MB hard drive space when installed, additionally its boot times are fairly long and it is only in the official repositories of two Linux distributions that I am aware of, namely, Gentoo Linux and Sabayon Linux. Further details about it can be found in the [*Running Atom on Linux*](/running-atom-on-linux) post.

The following subsections will be focused on its purpose-specific merits.

### Blog Writing
For the purpose of blog writing Atom has the following helpful features:

* It has in-built syntax-highlighting, previewing and snippeting support for GitHub-flavoured markdown (GFM). It also has in-built syntax-highlighting, auto-indentation and snippet support for HTML and, with the help of a plugin (`atom-html-preview`), it is also possible to preview HTML files in Atom. Syntax-highlighting, previewing and snippet support is also obtainable, using plugins, for asciidoc and textile. 
* It is also possible to work with git from within Atom, using the bundled plugin, `git-plus`, which can be handy when dealing with a static site generator operating on a git repository like one for GitHub Pages.
* It is possible to legalize

## 