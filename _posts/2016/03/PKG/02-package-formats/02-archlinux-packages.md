### Arch Linux Packages
**Arch Linux packages** are xz-compressed tar archives that are built and installed using commands provided by the `pacman` package on Arch Linux. They have the following contents:

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

the `sha256sums` can be replaced with `sha512sums` and sometimes GPG signatures are used also. For example, the Linux kernel PKGBUILD, in the core pacman repository, uses GPG and sha256sums to check package integrity and validity. The variable definition lines (that is, the `pkgname` line through to `install` line) provide mostly the package's metadata and security checks, while the `prepare()`, `build()` and `package()` functions are responsible for the actual building of the package. Here is an example PKGBUILD I have used to build gVim 7.4.1525:

~~~ bash
# Maintainer: Brenton Horne <brentonhorne77 at gmail dot com>
# Contributor: Peter Mattern <pmattern at arcor dot de>

_pkgname=vim
pkgname="gvim"
pkgver=7.4.1525
pkgrel=1
pkgdesc="Vim the editor. CLI version and GTK2 GUI providing majority of features."
arch=("i686" "x86_64")
url="http://www.vim.org"
license=("custom:vim")
depends=("gtk2" "hicolor-icon-theme" "gtk-update-icon-cache" "desktop-file-utils")
optdepends=("lua: Lua interpreter" "perl: Perl interpreter" "python: Python 3 interpreter"
            "python2: Python 2 interpreter" "ruby: Ruby interpreter")
makedepends=("lua" "python" "python2" "ruby")
provides=("gvim" "xxd" "vim-runtime")
conflicts=("vim-minimal-git" "vim-git"
           "vim-minimal" "vim" "vim-python3" "gvim" "gvim-python3")
source=("https://github.com/vim/vim/archive/v$pkgver.tar.gz"
        "gvim.desktop")
sha256sums=('SKIP'
            'c346da4725b2db6f7b58c5b72bdf9e7efbba2a3275e97c17db48689e4de674ca')
install=gvim.install

prepare() {

    # set global configuration files to /etc/[g]vimrc
    sed -i 's|^.*\(#define SYS_.*VIMRC_FILE.*"\) .*$|\1|' ${srcdir}/${_pkgname}-${pkgver}/src/feature.h

}

build() {

    cd "${srcdir}/${_pkgname}-${pkgver}"
    ./configure \
      --enable-fail-if-missing \
      --with-compiledby='Arch Linux AUR' \
      --prefix=/usr \
      --enable-gui=gtk2 \
      --with-features=huge \
      --enable-cscope \
      --enable-multibyte \
      --enable-perlinterp=dynamic \
      --enable-pythoninterp=dynamic \
      --enable-python3interp=dynamic \
      --enable-rubyinterp=dynamic \
      --enable-luainterp=dynamic
    make

}

package() {

    # actual installation
    cd "${srcdir}/${_pkgname}-${pkgver}"
    make DESTDIR=$pkgdir install

    # desktop entry file and corresponding icon
    install -D -m644 ../gvim.desktop      $pkgdir/usr/share/applications/gvim.desktop
    install -D -m644 runtime/vim48x48.png $pkgdir/usr/share/icons/hicolor/48x48/apps/gvim.png

    # remove ex/view and man pages (normally provided by package 'vi' on Arch Linux)
    cd $pkgdir/usr/bin ; rm ex view
    find $pkgdir/usr/share/man -type d -name 'man1' 2>/dev/null | \
      while read _mandir; do
        cd ${_mandir}
        rm -f ex.1 view.1
      done

    # add license
    install -D -m644 ${srcdir}/${_pkgname}-${pkgver}/runtime/doc/uganda.txt \
      $pkgdir/usr/share/licenses/$pkgname/LICENSE
}
~~~
