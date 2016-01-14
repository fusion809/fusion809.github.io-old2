## Eric Python IDE
{% include Links/image.html image="Eric6.png" width="1130px" float="none" description="Eric 6 running under Manjaro Linux" %}

### Background
{% include_relative TE/links2.md program="Eric Python IDE" package="dev-util/eric" pacman="community/any/eric/" link="http://eric-ide.python-projects.org/" wp="Eric_Python_IDE" hr="http://die-offenbachs.homelinux.org:48888/hg/eric/" sf="eric-ide" %} is a free and open-source IDE that is developed by its own community of donation-sponsored developers. It is written in and used to program in Python. As of Eric version 6, it supports both Python 2 and Python 3.

### Customizability
Eric has an extensive in-built plugin system. These plugins can be installed from within Eric's interface by going to "Plugins&rarr;Plugin Repository" and selecting the required plugin. I have limited experience with it so I cannot comment on its customizability.

### Features
Its features include support for managing Mercurial, Subversion and Git repositories, an integrated Python debugger, an interactive embedded Python shell with syntax-highlighting, syntax-highlighting for its text editor component, code autocompletion, *etc.*

### Obtaining It
#### Manjaro
On Manjaro Eric can be installed from the official pacman repositories with:
{% include Code/coder.html line1="pacman -S eric" %}
this will install `eric` and `eric-common` packages, which have a net installed size of 46.6 MB and download size of approximately 8.1 MB.

#### Sabayon
The version of Eric in the Entropy repository is 4.5.25, which is very out-of-date. The versions of Eric in the Portage Tree are 4.5.25 and 5.5.2, which support only Python 2 and Python 3, respectively. These two versions are slotted differently, which means that they can both be installed simultaneously on the same machine. To install Eric 4.5.25 with Entropy run:
{% include Code/coder.html line1="equo i -av eric" %}
while to install Eric 4.5.25 with Portage run:
{% include Code/coder.html line1="emerge -av eric:4" %}
and to install Eric 5.5.2 with Portage run:
{% include Code/coder.html line1="emerge -av eric:5" %}

### Advantages (Pros)
* Cross-platform
* Supports both Python versions
* Feature-packed for Python developers
* Lightweight

### Disadvantages (Cons)
* The latest version is not available via the usual channels on Sabayon

### Ratings
{% include_relative TE/eric-ratings.html %}
