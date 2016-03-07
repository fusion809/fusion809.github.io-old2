## Package Formats: The Basics
In order to effectively build packages one must understand the basics of the package format one intends to build. There are four major types of Linux package format that I worked with:

* **Arch Linux packages** (**ALP**, file extension: `.pkg.tar.xz`), the package format used by Arch Linux, its derivatives and select "independent" distributions such as Frugalware and KaOS. They are built based on the contents of PKGBUILDs, which are Bash scripts with build instructions for the package along with its associated metadata.
* **Debian packages** (or **Deb packages**, file extension: `.deb`), the package format used by Debian and its derivatives such as Ubuntu and its derivative, Linux Mint. They are built based on the contents of a whole directory and its subdirectories.
* **RPM packages** (file extensions: `.rpm`, `.src.rpm`), a package format used by select distributions such as CentOS, Fedora, Mageia and openSUSE. They are built based on the contents of a whole directory and its subdirectories. The most important file in these directories is called a spec file, which has the `.spec` file extension.
* **tbz2 packages** (file extension: `.tbz2`), the package format used by Gentoo Linux and its derivatives like Sabayon Linux. tbz2 files are built based on the contents of a specialized Bash script called an ebuild (with the `.ebuild` file extension).
