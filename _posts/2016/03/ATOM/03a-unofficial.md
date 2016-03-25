{% capture item1 %}
[**Arch Linux**](https://www.archlinux.org). Atom (package name is [`atom-editor`](https://aur.archlinux.org/packages/atom-editor)) is available from the Arch User Repository (AUR). The AUR provides PKGBUILDs with which users can build Atom from source code. To install Atom from the AUR one must run {% include Code/codeus.html line1="yaourt -S atom-editor" %} (provided Yaourt is installed) or:

{% include Code/codeu.html line1="git clone https://aur.archlinux.org/atom-editor.git" line2="cd atom-editor" line3="makepkg -si --noconfirm" %}

this takes at least 20 minutes to build Atom, for me, at least. Alternatively you can install Atom from my `PKGBUILDs` GitHub Repository:

{% include Code/codeu.html line1="git clone https://github.com/fusion809/PKGBUILDs" line2="cd PKGBUILDs/atom-editor" line3="makepkg -si --noconfirm" %}

this will take the same amount of time, though, but it is less likely to fail on you due to momentary Internet glitches. Alternatively, if these PKGBUILDs are not fast enough to install Atom for you, then provided you are using 64-bit Arch Linux you can install Atom from the `atom-editor-bin` PKGBUILD in the AUR. It creates an Atom Arch Linux package by taking its installed files from the Atom Debian package provided by the Atom GitHub repository. Cuts the install time to less than five minutes, usually.
{% endcapture %}
{% capture item2 %}
[Fedora](https://getfedora.org/). Atom is available from the Mosquito Copr
{% endcapture %}

<ul>
  <li>{{ item1 | markdownify }}</li>
  <li>{{ item2 | markdownify }}</li>
</ul>
