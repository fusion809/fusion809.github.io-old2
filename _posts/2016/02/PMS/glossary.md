## Glossary
### Debian Packages
**Debian packages** are software packages with the file extension `.deb`. They are archives formed with the `ar` utility, inside them are three files:
* tar archive called `data`, that is optionally bz2, gz, lzma or xz-compressed. It contains the installed files.
* tar archive called `control`, that is optionally compressed with any of the aforementioned algorithms and it contains package metadata.
* `debian-binary` text file that contains the deb format number, the latest is presently 2.0.
They are probably the single most popular type of Linux binary package out there, as they are used by each of the three most popular Linux distributions, according to *DistroWatch* (Debian, Linux Mint and Ubuntu).

### dpkg
[**dpkg**](https://wiki.debian.org/Teams/Dpkg) is a low-level package management tool that installs, removes, upgrades and provides inforRPM Package Managermation about Debian packages. dpkg was first developed by Ian Murdock in 1994 and is written in C, C++ and Perl.

### RPM Package Manager
The [**RPM Package Manager**](http://rpm.org/)[^1] is a low-level package management tool that installs, removes, upgrades and provides data  
