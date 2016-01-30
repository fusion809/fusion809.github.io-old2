## Glossary
### BSD Ports System
On BSD derivatives like FreeBSD a common form of package management is the so called "Ports" system. These ports are a series of subdirectories in the `/usr/ports` folder, each containing the source code of available packages that can be installed via this ports system. To install a package the user merely changes into the port of the package they want (this must be done as root, by-the-way, otherwise permission issues will be encountered later on in this process), configures the source code so that the package will be built with the features they want, and runs `make install`.

### Creating a Live Medium
In order to install any of the distributions mentioned in this post on a physical machine (and not a virtual machine, through VirtualBox) you need to first create a live medium (which is either a CD, DVD or USB) from the ISO image provided by the distribution. Several more user-friendly distributions have their own set of tools for creating a live medium from such an ISO, the most popular tools that work with a variety of different distributions are the graphical [UNetBootin](https://unetbootin.github.io/) program, 
