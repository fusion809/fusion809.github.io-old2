## DNF
[**Dandified Yum**](http://dnf.baseurl.org/) (**DNF**) is a rewrite of yum that's major distinguishing feature, from its predecessor, is the fact it uses ZYpp's libsolv library for dependency resolution and hence has performance advantages over yum. Despite this DNF is very similar to its parent, with an almost identical syntax, like its parent it is mostly written in Python and it serves as a front-end (for dependency resolution, repository management, *etc.*) for the RPM package manager. DNF has replaced yum as the default package manager of Fedora since the release of Fedora 22 in May 2015.

### Beginner-Friendliness
DNF is more intuitive than APT as there is just a single command that calls it, [`dnf`](/man/dnf.8.html). Its syntax is simple, for example {% include Code/coders.html line1="dnf install octave" %} should install GNU Octave, while {% include Code/coders.html line1="dnf remove octave" %} should uninstall it. Fedora and most of its derivatives use PackageKit front-ends such as Apper (for Qt-based desktop environments such as KDE) and GNOME Software, for graphical package management, both of which run DNF in the background. Overall I would rate DNF as **8/10** for beginner-friendliness.

### Customizability
Like APT as DNF is a binary package manager, so by default there are not many customizations that can be done to existing packages. 

Running {% include Code/coder.html line1="time dnf install -y vim-common" %} returns:
~~~
Last metadata expiration check performed 0:17:31 ago on Sat Feb 13 22:08:01 2016.
Dependencies resolved.
================================================================================
 Package           Arch          Version                    Repository     Size
================================================================================
Reinstalling:
 vim-common        x86_64        2:7.4.827-1.fc23           fedora        6.0 M

Transaction Summary
================================================================================

Total download size: 6.0 M
Downloading Packages:
vim-common-7.4.827-1.fc23.x86_64.rpm            1.0 MB/s | 6.0 MB     00:05    
--------------------------------------------------------------------------------
Total                                           357 kB/s | 6.0 MB     00:17     
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Reinstalling: vim-common-2:7.4.827-1.fc23.x86_64                          1/2
  Erasing     : vim-common-2:7.4.827-1.fc23.x86_64                          2/2
  Verifying   : vim-common-2:7.4.827-1.fc23.x86_64                          1/2
  Verifying   : vim-common-2:7.4.827-1.fc23.x86_64                          2/2

Reinstalled:
  vim-common.x86_64 2:7.4.827-1.fc23                                            

Complete!

real	0m33.853s
user	0m2.064s
sys	0m3.964s
~~~
