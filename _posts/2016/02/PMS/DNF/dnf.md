## DNF
[**Dandified Yum**](http://dnf.baseurl.org/) (**DNF**) is a rewrite of yum that's major distinguishing feature, from its predecessor, is the fact it uses ZYpp's libsolv library for dependency resolution and hence has performance advantages over yum. Despite this DNF is very similar to its parent, as it has an almost identical syntax, is written in Python and it serves as a front-end (for dependency resolution, repository management, *etc.*) for the RPM package manager. DNF has replaced yum as the default package manager of Fedora since the release of Fedora 22 in May 2015. CentOS is likely to follow suit sometime in the future.

### Beginner-Friendliness
DNF is more intuitive than APT as there is just a single command that calls it, [`dnf`](/man/dnf.8.html). Its syntax is simple, for example {% include Code/coders.html line1="dnf install octave" %} should install GNU Octave, while {% include Code/coders.html line1="dnf remove octave" %} should uninstall it. Fedora and most of its derivatives use PackageKit front-ends such as Apper (for Qt-based desktop environments such as KDE) and GNOME Software, for graphical package management, both of which run DNF in the background. Overall I would rate DNF as **8/10** for beginner-friendliness.

### Customizability
As with APT, DNF is primarily a binary package manager, so by default there are not many customizations that can be done to existing packages. Like with Debian packages for APT, however, a single upstream software package is often split into multiple smaller RPM packages, with each RPM package providing different functionalities of the upstream package. So this allows for some customization of installed packages, as users that just want basic core functionalities of the upstream package can just install the base package, while those that want to do development or debugging with the package can install the respective package providing said features.

DNF, however, is capable of downloading `.src.rpm` packages, which can be extracted, modified and rebuilt if the user really wants to customize the package, like adjust its configure options. I would personally recommend that if you wish to do this and you are not familiar with the process of building RPM packages that you read [this](http://fedoraproject.org/wiki/How_to_create_an_RPM_package) *Fedora Wiki* article on it.

### Features
DNF can be used to download and then install RPM packages from a specified URL too, which is a feature it has inherited from yum. For example, to install Atom 1.5.3 on a 64-bit Fedora system from the official RPM binary one would run (this command will **not** prompt the user before downloading and installing this package):

{% include Code/coder.html line1="dnf install -y https://github.com/atom/atom/releases/download/v1.5.3/atom.x86_64.rpm" %}

. I ran this command on a Fedora 23 VirtualBox VM to test it out and here was its output:

~~~
Last metadata expiration check performed 0:05:36 ago on Mon Feb 15 16:25:44 2016.
Dependencies resolved.
================================================================================
 Package      Arch           Version                 Repository            Size
================================================================================
Upgrading:
 atom         x86_64         1.5.3-0.1.fc21          @commandline          55 M

Transaction Summary
================================================================================
Upgrade  1 Package

Total size: 55 M
Downloading Packages:
Running transaction check
Transaction check succeeded.
Running transaction test
Transaction test succeeded.
Running transaction
  Upgrading   : atom-1.5.3-0.1.fc21.x86_64                                  1/2
  Cleanup     : atom-1.2.4-0.1.fc21.x86_64                                  2/2
  Verifying   : atom-1.5.3-0.1.fc21.x86_64                                  1/2
  Verifying   : atom-1.2.4-0.1.fc21.x86_64                                  2/2

Upgraded:
  atom.x86_64 1.5.3-0.1.fc21                                                    

Complete!
~~~

I find it gives better, more detailed, output than APT, pacman or ZYpp.  

### Speed
Running {% include Code/coders.html line1="time dnf install -y vim-common" %} returns:

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

{% include_relative table-2-basic-usage-examples.html %}
