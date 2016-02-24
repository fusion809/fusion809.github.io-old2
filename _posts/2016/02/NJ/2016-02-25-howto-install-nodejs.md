---
layout:       post
title:        "How to Install Node.js on Linux"
date:         2016-02-25 +1000
categories:   linux, nodejs, installation-guides
redirect_from:
  - /howto-install-nodejs/
---

One of the first things I do whenever I install a new distribution on my hard drive is I install all the programs I know and love. Usually one of the first such programs is the Atom text editor, and to build Atom from source code I need a fairly recent version of Node.js installed. The majority of distributions have Node.js in their software repositories, the only problem is that many distributions keep fairly old versions of Node.js in their official repositories. Case in point, as of 25 February 2016, Fedora 23 had Node.js 0.10.42 (belonging to the 0.10.x series which while still maintained was first released 19 March 2013) in their software repositories, even though the latest version (released 23 February 2016) is 5.7.0. openSUSE Tumbleweed (OT; a supposedly bleeding edge distro) even lags a little behind in their version of Node.js (presently 5.6.0), not as much as Fedora but still. OT's version of Node.js has also been prone to bugs, specifically the `npm` command it gives has a bug, namely running it (with any inputs or even no input) gives:

~~~ bash
module.js:462
  if fs.exists('/usr/lib64', fs.F_OK, function(err) {
     ^^

SyntaxError: Unexpected identifier
    at runInThisContext (node.js:904:18)
    at NativeModule.compile (node.js:988:14)
    at Function.NativeModule.require (node.js:937:18)
    at startup (node.js:99:35)
    at node.js:1001:3
~~~

OT is my present platform, however, and in order to build Atom myself (so that I can customize the package to my liking, more than I could if I stuck to the official releases at atom.io) I have to find a way around this bug. As my ability to fix spec file errors (i.e., the errors that are causing this bug to begin with) is in its infancy I really have to options at my disposal:

1. Build and install Node.js from source code. This method does work as I have tried it, but it is tedious and takes up a lot of CPU when it is being done.
2. Use the pre-build Node.js Linux 64-bit binary tarball.

I opted for option 2 as it is faster and easier. It entailed running:

{% include Code/codeu.html line1="wget -cqO- http://nodejs.org/dist/latest/node-v5.7.0.tar.xz | tar -xJ" line2="sudo cp -a node-v5.7.0/{bin,include,lib,share} /usr/" %}

and it worked perfectly. This method should, as far as I know, work on Debian, CentOS, Fedora, Mageia and Ubuntu. The only caveat is that this does not give one the latest npm, presently it gives npm 3.6.0 while 3.7.3 is the latest. To upgrade to the latest npm run:

{% include Code/coder.html line1="npm install -g npm" %}
