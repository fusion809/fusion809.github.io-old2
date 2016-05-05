## Atom
{% include Links/image.html image="Atom/Atom-1.7.2.png" width="100%" description="The Atom text editor (v1.7.2) opened to this very blog post, with an embedded terminal (provided by the `terminal-plus` package) shown" float="none" %}

**Atom** is a free, MIT-licensed text editor that is built using web technologies and developed by GitHub. It started out as a side project of Chris Wanstrath, one of GitHub's founders, in mid 2008. It is built using the Electron (previously called Atom Shell) framework for buildng cross-platform desktop applications using web technologies. It is extensively customizable, yet also simple enough, for someone that has never used a text editor in their life, to pick up in no time without help. Despite this it is a large application with its binaries being &gt;50 MB and taking up &gt;200 MB hard drive space when installed, additionally its boot times are fairly long and it is only in the official repositories of two Linux distributions that I am aware of, namely, Gentoo Linux and Sabayon Linux. Further details about it can be found in the [*Running Atom on Linux*](/running-atom-on-linux) post.

### Installation
Details on installing Atom on Linux can be found in the [*Installing Atom*](/running-atom-on-linux/#installing-atom) section of the *Running Atom on Linux* post. Most notably I have developed a GitHub repository of installer scripts for Atom on Linux, to use them (assuming cURL is installed):

{% include Code/codeu.html line1="/bin/bash -c &quot;$(curl -sL https://git.io/vwEIX)&quot;" %}

while if you do not have cURL installed but you do have wget installed run:

{% include Code/codeu.html line1="/bin/bash -c &quot;$(wget -cqO- https://git.io/vwEIX)&quot;" %}

{% include_relative 02-merits-features.md %}
