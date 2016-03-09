### Arch Linux Packages
**Arch Linux packages** are xz-compressed tar archives that are built and installed using commands provided by the `pacman` package on Arch Linux. They have the following contents:

{% include_relative 02-package-formats/PKGBUILDs/general-contents.md %}

where `$INSTALLED_FILES` are, of course, the installed files of the package with its respective file structure. For example, for the `broadcom-wl` package the `$INSTALLED_FILES` have the file structure:

{% include_relative 02-package-formats/PKGBUILDs/broadcom-wl-contents.md %}

The package metadata (which is used by pacman when it installs new packages to check for file conflicts and such) is stored in the four hidden files (that is, those with `.` in their filename) in the package's top-level directory. ALPs are built from PKGBUILDs using the `makepkg` command that comes bundled with the pacman package manager. They are the easiest packages to build, in my opinion. PKGBUILDs have the following general format (for more details see the [PKGBUILD(5)](/man/PKGBUILD.5.html) man page):

{% include_relative 02-package-formats/PKGBUILDs/general-format.md %}

the `sha256sums` can be replaced with `sha512sums` and sometimes GPG signatures are used also. For example, the Linux kernel PKGBUILD, in the core pacman repository, uses GPG and sha256sums to check package integrity and validity. The variable definition lines (that is, the `pkgname` line through to `install` line) provide mostly the package's metadata and security checks, while the `prepare()`, `build()` and `package()` functions are responsible for the actual building of the package. Here is an example PKGBUILD I have used to build gVim 7.4.1525:

{% include_relative 02-package-formats/PKGBUILDs/gvim.md %}
