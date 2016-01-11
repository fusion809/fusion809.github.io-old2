## Eclipse
{% include image.html image="Eclipse-4.5.1.png" width="1150px" float="none" description="Eclipse 4.5.1 running under Manjaro" %}

### Background
{% include_relative TE/links.md program="Eclipse" forum="https://www.eclipse.org/forums/" irc="eclipse" link="http://eclipse.org/eclipse" package="dev-util/eclipse-sdk" wiki="http://wiki.eclipse.org/Main_Page" wp="Eclipse_(software)" gw="Eclipse" aw="Eclipse" pacman="extra/x86_64/eclipse" %} is an free and open-source Integrated Development Environment (IDE) written in Java, that is primarily used for programming in C, C++, Java and PHP, although it is possible to program in other languages (such as Lua, Perl and Python) using it too. These other languages usually require the installation of additional plugins, such as {% include aur.md package="pydev" program="PyDev" %} for Python. It features in-built support for several compilers and interpreters.

### Customizability
I do not have enough experience with Eclipse to make any comment on its customizability, but I do know that extra functionality is usually added using plugins. Many of these plugins are also in the Arch User Repository, but not in any official or unofficial Portage overlays.

### Features
Eclipse features a text editor with syntax-highlighting, debugging and auto-complete support for most programming languages, in-built support for several compilers and interpreters, it also supports the use of project views, *etc.*

### Obtaining It
#### Manjaro
Eclipse can be installed by issuing the command:
{% include coder.html line1="pacman -S eclipse-common" %}

#### Sabayon
On Sabayon, Eclipse should not be installed via the default package managers: Entropy and Portage, due to the fact that it is not in the Entropy repositories and the versions found in the official and unofficial Portage overlays are fairly out-of-date and present security risks. Instead I would recommend you go to the download page, https://eclipse.org/downloads/, find the version you want (which will depend on the specifics of the programming you would like to perform) and download the respective tarball. This tarball should contain the executable script for launching the program. Alternatively, you can install it using the new installer:

```bash
# Set this mirror variable, according to whichever mirror is closest and best for you
MIRROR=http://mirror.internode.on.net
wget -cqO- $MIRROR/pub/eclipse/oomph/epp/mars/R1a/eclipse-inst-linux64.tar.gz | tar -xz
cd eclipse-installer
./eclipse-inst
```

### Disadvantages (Cons)
