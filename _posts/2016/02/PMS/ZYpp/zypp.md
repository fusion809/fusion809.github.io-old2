## ZYpp
[**ZYpp**](https://en.opensuse.org/Portal:Zypper) (also known as **libzypp**) is the default package manager of openSUSE, SUSE Linux Enterprise (SLE) and their derivatives. ZYpp provides the libraries for openSUSE's command-line package manager, [`zypper`](/man/zypper.8.html) and its graphical package manager, YaST2. ZYpp serves as a front-end for the RPM package manager, providing advanced features like repository management, dependency resolution, *etc.*, making it similar to DNF and yum in that regard. ZYpp unlike most other RPM package manager front-ends I am aware of (the only exception is, of course, APT-RPM), is written predominantly in the compiled language, C++, as opposed to DNF and yum which are written mostly in the interpreted language, Python, and urpmi which is written in the interpreted language, Perl. The significance of this, from the point of view of users, is that it may give ZYpp a speed advantage over these package managers. Zypper is written in C++ too while YaST is written in Ruby (another interpreted language, equally, if not more, slow than Perl or Python).

### Beginner-Friendliness
{% include Links/image.html image="YaST2-control-centre.png" width="600px" float="right" description="The YaST2 Control Center" %}
ZYpp is a fairly beginner-friendly package manager. Zypper has an intuitive syntax, which includes abbreviated commands such as `zypper in` for `zypper install`, `zypper rm` for `zypper remove` and `zypper up` for `zypper update`. YaST2 is probably the most powerful graphical package management system I have ever used, in that it gives users the greatest number of options, with which to configure their system. YaST2 is also the default installer of openSUSE, that is, it is used to install the openSUSE operating system. Overall I would rate it as **9/10** for beginner-friendliness.
{% include Layouts/clear.html %}

### Customizability
ZYpp, being a binary package manager, does not afford users much control over installed packages, although, it is possible to download the source packages (that is, the packages with the file extension `.src.rpm`) of installed packages, customize them and install the customized package.

### Development
As ZYpp works with RPM packages, following the [*Fedora Wiki*][1] instructions should suffice. It essentially involves creating a mock user called `makerpm`, with the required file system structure, getting the required spec file, source code files, *etc.* into their respective locations in your `/home/makerpm/rpmbuild` directory and finally running {% include Code/codeus.html line1="rpmbuild -ba $specfile.spec" %} (from the `rpmdevtools` package, which is not in the default repositories of any presently-supported openSUSE version, so to add it I recommend you use the `devel:tools` repository. [Here](https://software.opensuse.org/download.html?project=devel%3Atools&package=rpmdevtools) is where you can find one-click install files and installation instructions for the `rpmdevtools` package from this repository). Alternatively, for most packages you can use the [**Open Build Service**][2], which can also be run locally without ever submitting the package to one's OBS repository.

Some packages cannot be built using the OBS though, which is something I found out when I was trying to build my first RPM package, ironically, which was the [Atom text editor](https://atom.io).[^3] It was an exception as the OBS does **not** give packages Internet access during compilation. The Atom text editor is built or compiled by running the `script/build` command in its source's top-level directory, which requires Internet access as it downloads several Node.js modules and [Electron](https://electron.atom.io) using git and compiles them. A solution I came up with that ended up crashing and burning (refer to the forum thread mentioned in [^3]) was to compress a source code directory in which `script/build` had been run already (and as this command compiles everything in the source directory, this should have meant that I would not have to run `script/build` again in my atom spec file).

### Features
ZYpp is very feature-packed, it possesses all the features previously mentioned of DNF, with one exception: group installs. Instead if you wish to install a group of packages you have to use patterns, similarly to APT's tasks. For example, to install all members of the pattern `books` one would run: {% include Code/coders.html line1="zypper in -t pattern books" %}. To list all available patterns run {% include Code/coders.html line1="zypper pt" %}. YaST2 can also do so called &ldquo;one-click installs&rdquo;, wherein you click a button on a webpage, that is hyperlinked to a file with the `.ymp` file extension, which if your web browser preferences are set properly, should automatically download. If you click on the file either in your browser or in your file manager, it will open YaST2 which will, with your permission, attempt to install the package specified in the `.ymp` file. This system can be handy (and a time-saver) when one wishes to install a package from a repository not presently added, although if I already have the repository in question added, I usually prefer to use `zypper` to install the package.

### Speed
On openSUSE Leap 42.1 running {% include Code/coders.html line1="time zypper in -y --force vim" %} returned:

~~~
Warning: Legacy commandline option -y/--no-confirm detected. Please use global option -n/--non-interactive instead.
Loading repository data...
Reading installed packages...
Forcing installation of 'vim-7.4.326-3.10.x86_64' from repository 'Main Repository (OSS)'.
Resolving package dependencies...

The following package is going to be reinstalled:
  vim

1 package to reinstall.
Overall download size: 0 B. Already cached: 1.2 MiB. No additional space will be used or
freed after the operation.
Continue? [y/n/? shows all options] (y): y
In cache vim-7.4.326-3.10.x86_64.rpm               (1/1),   1.2 MiB (  2.6 MiB unpacked)
Checking for file conflicts: .....................................................[done]
(1/1) Installing: vim-7.4.326-3.10 ...............................................[done]

real    0m12.328s
user    0m2.272s
sys     0m0.488s
~~~

On my openSUSE Tumbleweed VM I received longer reinstall times, of (the hyperlinks are to where the full output can be found) [19.604s](https://gist.github.com/fusion809/4101245256b3bdb9eb46) and [20.312s](https://gist.github.com/fusion809/37d917ada854db67dec8), respectively. I decided to show the smallest time as I believe from using ZYpp on my non-virtual installation of openSUSE Tumbleweed that these figures may not have been an accurate representation of the speed of ZYpp, under normal working conditions. Despite this from this test it seems like as though ZYpp is third only to DNF and Portage for being the slowest package manager compared in this comparison.

{% include_relative ZYpp/table-7-basic-usage-examples.html %}
