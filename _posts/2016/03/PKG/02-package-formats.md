## Package Formats: The Basics
In order to effectively build packages one must understand the basics of the package format one intends to build. There are four major types of Linux package format that I worked with:

* **Arch Linux packages** (**ALP**, file extension: `.pkg.tar.xz`), the package format used by Arch Linux, its derivatives and select "independent" distributions such as Frugalware and KaOS. They are built based on the contents of PKGBUILDs, which are Bash scripts with build instructions for the package along with its associated metadata.
* **Debian packages** (or **Deb packages**, file extension: `.deb`), the package format used by Debian and its derivatives such as Ubuntu and its derivative, Linux Mint. They are built based on the contents of a whole directory and its subdirectories.
* **RPM packages** (file extensions: `.rpm`, `.src.rpm`), a package format used by select distributions such as CentOS, Fedora, Mageia and openSUSE. They are built based on the contents of a whole directory and its subdirectories. The most important file in these directories is called a spec file, which has the `.spec` file extension.
* **tbz2 packages** (file extension: `.tbz2`), the package format used by Gentoo Linux and its derivatives like Sabayon Linux. tbz2 files are built based on the contents of a specialized Bash script called an ebuild (with the `.ebuild` file extension). ebuilds are stored within a series of directories and subdirectories, usually managed by Git or some other version control system (VCS) like Mercurial or Subversion.

### Arch Linux Packages
**Arch Linux packages** are built from PKGBUILDs using the `makepkg` command that comes bundled with the pacman package manager. They are the easiest packages to build, in my opinion. PKGBUILDs have the following general format:

~~~ bash
# ~ COPYRIGHT info, and the email of maintainer(s) and/or contributor(s) ~
pkgname=      # The package's name
pkgver=       # The upstream package version, e.g., 1.5.0 for Atom 1.5.0
pkgrel=       # The PKGBUILD revision number.
pkgdesc=      # The PKGBUILD's description.
arch=         # The architecture(s) on which the package is to be built.
url=          # The website of the package.
license=      # The legal license of the package.
depends=      # Runtime dependencies.
makedepends=  # Build dependencies.
optdepends=   # Optional dependencies
provides=     # What the package provides
conflicts=    # The package conflicts
source=       # The source files required; also includes patches
sha256sums=   # SHA256 sums of the source files.
md5sums=      # MD5 sums of the source files. Usually used INSTEAD of sha256sums
install=      # Install files

prepare() {   # Prepare the sources. Most commonly you will find sed functions
}             # and patches being applied here

build() {     # Perform any compiling of the source code that may be necessary.
}             # You may also see configure scripts being run here.

package() {   # This will actually build the package. If more than one package is
}             # built from the one PKGBUILD then more than one package() function
              # is provided.
~~~
