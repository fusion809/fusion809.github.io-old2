## KDevelop
{% include image.html image="KDevelop-4.7.2.png" width="1130px" float="none" description="KDevelop 4.7.2 running under Manjaro Linux" %}

### Background
{% include_relative TE/links2.md program="KDevelop" package="dev-util/kdevelop" pacman="extra/x86_64/kdevelop" wp="KDevelop" link="https://www.kdevelop.org/" %} is an IDE that is part of the KDE Core Applications (KDE-CA) suite, unlike most other members of the KDE-CA suite it is still based on Qt4 and has not yet made the transition to KDE Frameworks 5 (KF5). Plans to transition to KF5 are currently in place for the near future. It is designed for C, C++, PHP and Python development.

### Customizability
KDevelop is a program I have little experience with, but if you go to the "Settings" menu you can choose to modify the program's keyboard shortcuts and other aspects of its behaviour.

### Features
KDevelop features source code editor support (including syntax highlighting, autocompletion, autoindentation, *etc.*) for its four programming languages, it also has in-built support for git and compilers/interpreters for C, C++, PHP and Python.

### Obtaining It
#### Manjaro
KDevelop is in Manjaro's pacman repositories and can be installed by running the command:
{% include coder.html line1="pacman -S kdevelop" %}

#### Sabayon
KDevelop is in the Entropy repositories and Portage Tree. The version in the Entropy repositories is a developmental version based on Qt5. To install KDevelop on Sabayon, merely run:
{% include coder.html line1="equo i -av dev-util/kdevelop" %}
or:
{% include coder.html line1="emerge -av dev-util/kdevelop" %}

### Advantages (Pros)
* Easy to install.

### Disadvantages (Cons)
* Only supports four programming languages.
* Not very customizable.

### Ratings
<ul>
  <li><strong>Availability</strong>: 8.</li>
  <li><strong>Beginner-friendliness</strong>: 8.</li>
  <li><strong>Customizability</strong>: &lt;5.</li>
  <li><strong>Features</strong>: 6.</li>
  <li><abbr title="My Experience With It"><strong>MEWI</strong></abbr>: 1.</li>
  <li><strong>Popularity</strong>: ?</li>
  <li><strong>SRU</strong>: 4-5. On Manjaro KDevelop is a 4.9 MB download and takes up 12.2 MB when installed. Here is my <code>ps_mem</code> table under Manjaro: <script src="/js/36795a1d8cdbc72bdd1f.js"></script>. Under Sabayon it is a 5.7 MB download and takes up 13.4 MB when installed. Here is my <code>ps_mem</code> table under Sabayon: <script src="/js/6899e31f999156e85ea2.js"></script></li>
  <li><strong>Overall</strong>: 8.</li>
</ul>
