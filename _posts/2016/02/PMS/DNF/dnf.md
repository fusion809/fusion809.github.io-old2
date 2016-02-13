## DNF
[**Dandified Yum**](http://dnf.baseurl.org/) (**DNF**) is a rewrite of yum that's major distinguishing feature, from its predecessor, is the fact it uses ZYpp's libsolv library for dependency resolution and hence has performance advantages over yum. Despite this DNF is very similar to its parent, with an almost identical syntax, like its parent it is mostly written in Python and it serves as a front-end (for dependency resolution, repository management, *etc.*) for the RPM package manager. DNF has replaced yum as the default package manager of Fedora since the release of Fedora 22 in May 2015.

### Beginner-Friendliness
DNF is more intuitive than APT as there is just a single command that calls it, `dnf`. 
