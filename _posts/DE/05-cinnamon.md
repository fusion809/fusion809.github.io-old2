## Cinnamon
{% include image.html image="operating-systems/Linux-Mint-17.3.png" width="1130px" float="none" description="Cinnamon running on Linux Mint 17.3" %}

### Background
**Cinnamon** is a GNOME 3 fork developed for Linux Mint that is similarly heavy on SRU. It provides a more traditional user interface than GNOME 3, with its appearance more closely resembling that of GNOME 2 than GNOME 3. Compared to the GNOME 2 fork, MATE, that was originally released roughly the same time as it (in 2011 &mdash; the year that GNOME 3 was released), it is significantly more configurable but also heavier on SRU. In fact, I would argue it is even more configurable than its parent, GNOME 3. Like its parent, however, this configuration is done via the use of extensions/plugins, themes and its system settings GUI. Its major disadvantages are mostly related to its SRU, instability, lack of Wayland support and lack of distribution-independent support.

### Customizability
Most things can be customized in Cinnamon, for one it has a digital clock that can be configured to a custom format. I usually use the format (for details on how to create your own custom date and time format see https://help.gnome.org/users/gthumb/unstable/gthumb-date-formats.html.en):
`%l:%M:%S %P, %A %e %B %Y`
for example as I am typing this post this would be rendered as: `1:26:00 pm, Thursday 28 January 2016`. This custom format is not available under GNOME or MATE, by the way. Additionally, one can modify one's keyboard shortcuts, one's theme and several other details about one's system.

### Features
Cinnamon has several extensions available for it, which can be installed via a built-in installer. I have found more extensions available for it, that are compatible with the latest release of the desktop, than are available for GNOME and MATE. For example, I have found a weather desklet which can be handy.

### Obtaining It
Cinnamon is in the package repositories of the vast majority of Linux distributions, including (note, these instructions should install the Cinnamon meta-package, which should draw in all core components of the desktop for installation):
* {% include Search/debian.md package="cinnamon" %}
* {% include Search/arch.md package="cinnamon" %}
* {% include Search/ubuntu.md package="cinnamon" %}
* {% include Search/gentoo.md package="gnome-extra/cinnamon" %}
* {% include Search/centos.md package="cinnamon" %}
* {% include Search/fedora.md package="cinnamon" %}
* {% include Search/mageia.md package="cinnamon" %}
* {% include Search/opensuse.md package="cinnamon" %}
* {% include Search/sabayon.md package="gnome-extra/cinnamon" %}
gist id 20fac68c45f06e00b257
