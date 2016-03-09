### Arch Linux Packages
**Arch Linux packages** are xz-compressed tar archives with the following contents:

~~~ bash
$INSTALLED_FILES
.BUILDINFO
.INSTALL
.MTREE
.PKGINFO
~~~

where `$INSTALLED_FILES` are, of course, the installed files of the package with its respective file structure. For example, for the `broadcom-wl` package the `$INSTALLED_FILES` have the file structure:

~~~ bash
usr/
 - lib/
   - modprobe.d/
     - broadcom-wl.conf
   - modules/
     - extramodules-4.4-ARCH/
       - wl.ko.gz
 - share/
   - licenses/
     - broadcom-wl/
       - LICENSE
~~~

The package metadata (which is used by pacman when it installs new packages to check for file conflicts and such) is stored in the four hidden files (that is, those with `.` in their filename) in the package's top-level directory. ALPs are built from PKGBUILDs using the `makepkg` command that comes bundled with the pacman package manager. They are the easiest packages to build, in my opinion. PKGBUILDs have the following general format (for more details see the [PKGBUILD(5)](/man/PKGBUILD.5.html) man page):

~~~ bash
# ~ Maintainer/Contributor name and email ~
pkgname=      # The package's name.
pkgver=       # The upstream package version, e.g., 1.5.0 for Atom 1.5.0.
pkgrel=       # The PKGBUILD revision number.
pkgdesc=      # The PKGBUILD's description.
arch=         # The architecture(s) on which the package is to be built.
url=          # The website of the package.
license=      # The legal license of the package.
depends=      # Runtime dependencies.
makedepends=  # Build dependencies.
optdepends=   # Optional dependencies.
provides=     # What the package provides.
conflicts=    # The package conflicts.
source=       # The source files required; also includes patches.
sha256sums=   # SHA256 sums of the source files.
md5sums=      # MD5 sums of the source files. Usually used INSTEAD of sha256sums.
install=      # Install files.

prepare() {   # Prepare the sources. Most commonly you will find sed functions
}             # and patches being applied here.

build() {     # Perform any compiling of the source code that may be necessary.
}             # You may also see configure scripts being run here.

package() {   # This will actually build the package. If more than one package is
}             # built from the one PKGBUILD then more than one package() function is provided.
~~~

the `sha256sums` can be replaced with `sha512sums` and sometimes GPG signatures are used also. For example, the Linux kernel PKGBUILD, in the core pacman repository, uses GPG and sha256sums to check package integrity and validity. The variable definition lines (that is, the `pkgname` line through to `install` line) provide mostly the package's metadata and security checks, while the `prepare()`, `build()` and `package()` functions are responsible for the actual building of the package.
