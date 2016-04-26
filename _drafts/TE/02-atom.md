## Atom
{% include Links/image.html image="Atom/Atom-1.7.2.png" width="100%" description="The Atom text editor (v1.7.2) opened to this very blog post, with an embedded terminal (provided by the `terminal-plus` package) shown" float="none" %}

**Atom** is a free, MIT-licensed text editor that is built using web technologies and developed by GitHub. It started out as a side project of Chris Wanstrath, one of GitHub's founders, in mid 2008. It is built using the Electron (previously called Atom Shell) framework for buildng cross-platform desktop applications using web technologies. It is extensively customizable, yet also simple enough, for someone that has never used a text editor in their life, to pick up in no time without help. Despite this it is a large application with its binaries being &gt;50 MB and taking up &gt;200 MB hard drive space when installed, additionally its boot times are fairly long and it is only in the official repositories of two Linux distributions that I am aware of, namely, Gentoo Linux and Sabayon Linux. Further details about it can be found in the [*Running Atom on Linux*](/running-atom-on-linux) post.

### Installation
Details on installing Atom on Linux can be found in the [*Installing Atom*](/running-atom-on-linux/#installing-atom) section of the *Running Atom on Linux* post. Most notably I have developed a GitHub repository of installer scripts for Atom on Linux, to use them (assuming cURL is installed):

```bash
/bin/bash -c "$(curl -sL https://git.io/vwEIX)"
```

while if you do not have cURL installed but you do have wget installed run:

```bash
/bin/bash -c "$(wget -cqO- https://git.io/vwEIX)"
```

### General
Atom's **general merits** include:

* In-built **embedded file/directory browser** called tree view and provided by the {% include Atom/apm.md package="tree-view" %} package.
* In-built support for **running git commands** in Atom, using the {% include Atom/apm.md package="git-plus" %} package.
* In-built **syntax-highlighting**, **auto-indentation**, **auto-completion**, **snippets**, *etc.* support for the majority of markup, programming and style sheet languages.

Additional **general-purpose features** that Atom can gain by the installation of extra packages include (in brackets are the package(s) that provide this feature):

* Insertion of an **embedded terminal emulator** into Atom {% include Atom/apm.md package="terminal-plus" puncl="(" puncr=")." %}
* Searching through **past git commits** in a repository {% include Atom/apm.md package="git-time-machine" puncl="(" puncr=")." %}
* **Running hg commands** in Atom, using the {% include Atom/apm.md package="atom-hg" %} package.

### Blog Writing
For the purpose of blog writing Atom has the following helpful features:

* It has in-built syntax-highlighting, previewing and snippeting support for GitHub-flavoured markdown (GFM). It also has in-built syntax-highlighting, auto-indentation and snippet support for HTML and, with the help of a plugin {% include Atom/apm.md package="atom-html-preview" puncl="(" puncr=")," %} it is also possible to preview HTML files in Atom. Syntax-highlighting, previewing and snippet support is also obtainable, using plugins, for asciidoc and textile.
* The in-built git support and embedded terminal mentioned earlier can be handy for those writing blogs hosted by GitHub and other sites using the git version control system. It can also be handy for those using static site generators that need to be re-generated manually before you make any git commits (e.g., Hexo).

### Programming
