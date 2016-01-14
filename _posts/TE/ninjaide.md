## Ninja-IDE
{% include image.html image="Ninja-IDE-2.3.0.png" width="1130px" float="none" description="Ninja IDE 2.3.0 running under Manjaro" %}

### Background
{% include_relative TE/links2.md package="dev-util/ninja-ide" program="Ninja IDE" pacman="community/any/ninja-ide" link="http://ninja-ide.org/" wp="Ninja_IDE" forum="https://groups.google.com/forum/#!forum/ninja-ide" gr="https://github.com/ninja-ide/ninja-ide" %} is a free and open-source IDE that is designed specifically for Python development.

### Customizability
{% include image.html image="Ninja-IDE-Preferences.png" width="1130px" float="none" description="Ninja IDE Preferences Window" %}
Ninja-IDE can be customized via its preferences window. Its keyboard shortcuts can be customized in this interface. The theme can also be customized and fewer than 100 plugins can also be installed.

### Features
Ninja-IDE seems to be fairly light on features, but it has basic TE features like syntax-highlighting and  auto-indentation, it also has an embedded Python shell and can run Python scripts by the user right-clicking them and clicking the "Run" option.

### Obtaining It
It is in the official binary package repositories of both Manjaro and Sabayon.

#### Manjaro
Ninja-IDE can be installed on Manjaro by running:
{% include coder.html line1="pacman -S ninja-ide" %}

#### Sabayon
It can be installed on Sabayon by running:
{% include coder.html line1="equo i -av ninja-ide" %}
or:
{% include coder.html line1="emerge -av ninja-ide" %}

### Advantages (Pros)
* It is easily installable via binary packages on both Manjaro and Sabayon.
* Fairly lightweight

### Disadvantages (Cons)
* Does not support many programming languages

### Ratings
{% include_relative TE/ninjaide-ratings.html %}
430d6322b56c7f4f2fb6
