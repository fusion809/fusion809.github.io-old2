---
layout:           post
title:            "A Comparison of Text Editors and IDEs for Manjaro and Sabayon Linux"
date:             2016-01-18 +1000
categories:       comparisons, text-editors, integrated-development-environment, manjaro-linux, sabayon-linux
redirect_from:
      - /2016/01/12/comparison-of-text-editors/
      - /2016/01/20/comparison-of-text-editors/
      - /comparison-of-text-editors/
---
{% include Links/image.html image="Atom-1.3.2.png" width="1130px" float="none" description="Atom 1.3.2 running under the Deepin Desktop Environment (DDE) on Manjaro Linux" %}

{% include Layouts/note.md note1="While not stated in the title of this post, for the sake of brevity, this post is only about free and open-source text editors and IDEs" %}

**Text editors** are essential programs for software developers and programmers in general, as they enable users to write and edit source code or markup files. They are popular tools used by both experienced and novice Linux users. In this post I will compare the various *free and open-source* text editors available for Manjaro and Sabayon, with regard to several features and properties of each. It is important to note that I am not a programmer, my experience with programming is limited to mostly MATLAB/GNU Octave scripts, a small handful of Python scripts I wrote for technical computing (that is, numerical analysis) and a few Bash scripts I have written to make my life easier, when I use Linux systems.

Also covered in this post are *free and open-source* **integrated development environments** (see [here](#integrated-development-environment) for a definition), or **IDEs** for short, which are essentially text editors with extra tools for programmers. Many of the IDEs compared here I have even less experience with than I do with standard text editors, due to the fact I am not a computer programmer.

On Sabayon there are over a dozen different text editors (see, for example, the category [app-editors](http://gpo.zugaina.org/app-editors/) at gpo.zugaina.org) and IDEs (see the category [dev-util](http://gpo.zugaina.org/dev-util/)) available for installation, many of these are part of the core applications of complete desktop environments, such as GNOME or KDE Plasma. Each of these programs also have their own target market, with some being designed to be used only by seasoned programmers while others are useful only for writing simple text files. Entropy and Portage both use the category for programs relating to text editing of `app-editors`. To list the Entropy packages in this category, from the command-line, run:
{% include Code/codeu.html line1="equo search &quot;app-editors&quot;" %}
While to list ebuilds in installed overlays, plus the Portage tree, within the category of app-editors run:
{% include Code/codeu.html line1="emerge --search &quot;%@^app-editors&quot;" %}
To search all overlays run (the first two of these lines ):
{% include Code/codeu.html line1="eix-update" line2="eix-remote update" line3="eix -RCc &quot;app-editors&quot;" %}
This post will compare several different text editors that are available for Sabayon (I know as I have installed them all myself), with respect to several aspects.
IDEs can usually be found in the `dev-util` category, so to list those available in the Entropy repositories, run:
{% include Code/codeu.html line1="equo search &quot;dev-util&quot;" %}
to search all overlays (including the Portage Tree) run:
{% include Code/codeu.html line1="eix -RCc &quot;dev-util&quot;" %}
{% include Links/image.html image="PkgBrowser-text-editors.png" description="How to list the text editors in PkgBrowser" width="1130px" float="none" %}
On Manjaro Linux many, if not all of these text editors/IDEs, are also available from the [Arch User Repository](https://aur.archlinux.org) (AUR) or the Manjaro repositories. Unfortunately, pacman, does not use categories for its packages, so one cannot use this to search for TEs/IDEs. One can, however, use the graphical PkgBrowser program, which can be installed using the command:
{% include Code/coder.html line1="pacman -S pkgbrowser" %}
to show the text editors in the pacman repositories go to the `Categories` menu, press the `app` submenu and then the `editor` submenu under there.
{% include_relative TE/glossary.md %}
{% include_relative TE/comparisons.md %}
{% include_relative TE/atom.md %}
{% include_relative TE/bluefish.md %}
{% include_relative TE/codeblocks.md %}
{% include_relative TE/codelite.md %}
{% include_relative TE/eclipse.md %}
{% include_relative TE/emacs.md %}
{% include_relative TE/eric.md %}
{% include_relative TE/geany.md %}
{% include_relative TE/gedit.md %}
{% include_relative TE/intellijidea.md %}
{% include_relative TE/jedit.md %}
{% include_relative TE/kate.md %}
{% include_relative TE/kdevelop.md %}
{% include_relative TE/komodoedit.md %}
{% include_relative TE/leafpad.md %}
{% include_relative TE/mousepad.md %}
{% include_relative TE/nano.md %}
{% include_relative TE/netbeans.md %}
{% include_relative TE/ninjaide.md %}
{% include_relative TE/pluma.md %}
{% include_relative TE/pycharm.md %}
{% include_relative TE/scite.md %}
{% include_relative TE/vim.md %}

## Poll
<div id="debate_1_2324434"></div>
<script>
  (function () {
    var opst = document.createElement('script');
    opst.type = 'text/javascript';
    opst.async = true;
    opst.src = '/js/embed-2324434.js';
    (document.getElementsByTagName('head')[0] ||
      document.getElementsByTagName('body')[0]).appendChild(opst);
  }());
</script>

## SRU Comparison
{% include Links/image.html image="ISRAM-usage-TEs-Sab.svg" width="1130px" float="none" %}
{% include Links/image.html image="ISRAM-usage-TEs-Man.svg" width="1130px" float="none" %}

[^1]: Ben Ogle (11 November 2015). [*Atom 1.3*](http://blog.atom.io/2015/12/11/atom-1-3.html). *blog.atom.io*: Atom.
[^2]: [Releases &middot; jenslody/codeblocks](https://github.com/jenslody/codeblocks/releases?after=CODEBLOCKS_1_0_BETA5). Retrieved 12 January 2016.
[^3]: [Plugins](http://codeblocks.org/cbplugins). Retrieved 12 January 2016.
