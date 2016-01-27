## awesome
{% include Links/image.html image="Pengw-awesome-screenshot-20150215.png" width="1130px" float="none" %}

### Background
The [**awesome window manager**](http://awesome.naquadah.org/) is a [dynamic window manager](https://en.wikipedia.org/wiki/Dynamic_window_manager) for the X Window System that is developed by Julien Danjou (who now works for Red Hat) and others, that is oriented towards more advanced users. See unlike more beginner-friendly WMs, which can be configured graphically, awesome must be configured using Lua scripts. Now my knowledge of Lua is in its infancy, so needless to say my experience with awesome is also fairly limited. What I do know about Lua is that it is easier to learn than lower-level languages like C, C++ or Java, so while awesome is not the best choice for programming-nohopers it may be possible for someone that does not understand Lua, that has the time and willingness to learn, to pick it up while using awesome. A tutorials for newcomers to awesome can be found [here](http://awesome.naquadah.org/wiki/My_first_awesome).

awesome was originally forked from [dwm](https://en.wikipedia.org/wiki/Dwm), a very basic dynamic window manager, in 2007 and named jdwm with the "jd" in its name coming from Danjou's initials. Later that year it was renamed awesome after the catchphrase of the *How I Met Your Mother* character, Barney Stinson.

### Customizability
All configuration must be done by editing files in the `~/.config/awesome` folder. In this folder is a Lua script called `rc.lua`, which is the Lua script awesome will run whenever it is started, by default. It is also called the &ldquo;config&rdquo; file. awesome comes with a default config file usually found in the `/etc/xdg/awesome/` folder, which can be customized to one's liking.

### Obtaining It
awesome is found in the official repositories of the vast majority of Linux distributions, including:
* {% include Search/debian.md package="awesome" %}
* {% include Search/arch.md package="awesome" %}
* {% include Search/ubuntu.md package="awesome" %}
* {% include Search/gentoo.md package="x11-wm/awesome" %}
* {% include Search/centos.md package="awesome" %}
* {% include Search/fedora.md package="awesome" %}
* {% include Search/opensuse.md package="awesome" %}
* {% include Search/sabayon.md package="x11-wm/awesome" %}
oddly it does not seem that Mageia has an awesome package, look at [this search](http://madb.mageia.org/package/list/t_search/awesome) for confirmation. At least one of the its dependencies, xproto, is not in the Mageia repositories either, so building from source is not as straight-forward an option as one may hope.

### Rating(s)
* **Availability**: 7. The majority of Linux distributions have it in their official repositories.
