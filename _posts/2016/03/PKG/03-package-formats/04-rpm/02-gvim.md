~~~ bash
#
# spec file for package vim
#
# Copyright (c) 2016 SUSE LINUX GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#


%define pkg_version 7.4
%define patchlevel  1525
%define VIM_SUBDIR vim74
%define site_runtimepath /usr/share/vim/site
%define make make VIMRCLOC=/etc VIMRUNTIMEDIR=/usr/share/vim/current MAKE="make -e" %{?_smp_mflags}

Name:           vim
Version:        7.4.%{patchlevel}
Release:        0
BuildRequires:  autoconf
BuildRequires:  db-devel
BuildRequires:  fdupes
BuildRequires:  gettext-devel
BuildRequires:  gpm-devel
BuildRequires:  gtk2-devel
%if 0%{?suse_version} > 1200
BuildRequires:  pkgconfig(xt)
%endif
%if 0%{?suse_version}
BuildRequires:  krb5-mini
%else
BuildRequires:  krb5
%endif
BuildRequires:  libacl-devel
BuildRequires:  lua-devel
BuildRequires:  ncurses-devel
%if 0%{?suse_version}
BuildRequires:  perl
%else
BuildRequires:  perl-devel
BuildRequires:  pkgconfig
BuildRequires:  python-devel
BuildRequires:  python3-devel
BuildRequires:  perl(ExtUtils::Embed)
BuildRequires:  perl(ExtUtils::ParseXS)
%endif
# Needed to convert svg to png
%if 0%{?suse_version}
BuildRequires:  rsvg-view
%endif
BuildRequires:  ruby-devel
%if 0%{?suse_version}
BuildRequires:  update-desktop-files
%else
Requires:       desktop-file-utils
BuildRequires:  desktop-file-utils >= %{desktop_file_utils_version}
%endif
BuildRoot:      %{_tmppath}/%{name}-%{version}-build
%if 0%{?suse_version}
PreReq:         fileutils
PreReq:         sh-utils
%else
BuildRequires:  desktop-file-utils
%endif
Provides:       vi
Provides:       vim-base = %{version}-%{release}
Provides:       vim-enhanced = %{version}-%{release}
Provides:       vim-python = %{version}-%{release}
Obsoletes:      vim-base < %{version}-%{release}
Obsoletes:      vim-enhanced < %{version}-%{release}
Obsoletes:      vim-python < %{version}-%{release}
Provides:       vim_client
Recommends:     vim-data = %{version}-%{release}
Summary:        Vi IMproved
License:        Vim
Group:          Productivity/Editors/Vi
Url:            http://www.vim.org/
Source:         https://github.com/vim/vim/archive/v%{version}.tar.gz
Source3:        suse.vimrc
Source4:        vimrc_example1
Source5:        vimrc_example2
Source8:        suse.gvimrc
Source10:       README.Japanese-XIM
Source13:       vitmp.c
Source14:       vitmp.1
Source15:       vim132
Source18:       missing-vim-client
Source19:       gvim.desktop
Source20:       spec.skeleton
Source23:       apparmor.vim
Source24:       gvim.svg
Source25:       gvim.png
Source99:       %{name}-7.4-rpmlintrc
Patch3:         %{name}-7.4-disable_lang_no.patch
Patch4:         %{name}-7.3-gvimrc_fontset.patch
Patch5:         %{name}-7.4-highlight_fstab.patch
Patch6:         %{name}-7.3-sh_is_bash.patch
Patch7:         %{name}-7.3-filetype_ftl.patch
Patch8:         %{name}-7.3-help_tags.patch
Patch9:         %{name}-7.3-use_awk.patch
Patch10:        %{name}-7.3-name_vimrc.patch
Patch11:        %{name}-7.3-mktemp_tutor.patch
Patch15:        %{name}-7.4-filetype_apparmor.patch
Patch18:        %{name}-7.3-filetype_spec.patch
Patch21:        %{name}-7.3-filetype_changes.patch
Patch22:        %{name}-7.4-filetype_mine.patch
Patch100:       vim73-no-static-libpython.patch

%description
Vim (Vi IMproved) is an almost compatible version of the UNIX editor
vi. Almost every possible command can be performed using only ASCII
characters. Only the 'Q' command is missing (you do not need it). Many
new features have been added: multilevel undo, command line history,
file name completion, block operations, and editing of binary data.

Vi is available for the AMIGA, MS-DOS, Windows NT, and various versions
of UNIX.

For SUSE Linux, Vim is used as /usr/bin/vi.

%package data
Summary:        Vi IMproved
Group:          Productivity/Editors/Vi
BuildArch:      noarch
# Used to be in vim-plugins package
Obsoletes:      vim-plugin-matchit <= 1.13.2
Provides:       vim-plugin-matchit = 1.13.2

%description data
Vim (Vi IMproved) is an almost compatible version of the UNIX editor
vi. Almost every possible command can be performed using only ASCII
characters. Only the 'Q' command is missing (you do not need it). Many
new features have been added: multilevel undo, command line history,
file name completion, block operations, and editing of binary data.

Vi is available for the AMIGA, MS-DOS, Windows NT, and various versions
of UNIX.

For SUSE Linux, Vim is used as /usr/bin/vi.

Package vim-data contains the runtime files.

%package -n gvim
Summary:        A GUI for Vi
Group:          Productivity/Editors/Vi
Requires:       gvim_client
Requires:       vim-data
Provides:       gvim-base = %{version}-%{release}
Provides:       gvim-enhanced = %{version}-%{release}
Obsoletes:      gvim-base < %{version}-%{release}
Obsoletes:      gvim-enhanced < %{version}-%{release}
Provides:       gvim_client
Provides:       vi
Provides:       vim_client

%description -n gvim
Copy and modify /usr/share/vim/current/gvimrc to ~/.gvimrc if needed.

Package gvim contains the largest set of features of vim, which is
graphical windows and language interpreter, like python, ruby, or perl.
You need package vim for the help and other documentation too. If you
want less features, you might want to install vim instead.

%prep
%setup -q -n %{name}-%{version}

%patch3 -p1
%patch4 -p1
%patch5 -p1
%patch6 -p1
%patch7 -p1
%patch8 -p1
%patch9 -p1
%patch10 -p1
%patch11 -p1
cp %{SOURCE23} runtime/syntax/apparmor.vim
%patch15 -p1
%patch18 -p1
%patch21 -p1
%patch22 -p1
%patch100 -p1
cp %{SOURCE3} %{SOURCE4} %{SOURCE5} %{SOURCE8} %{SOURCE10} .

%build
export CFLAGS="%{optflags} -Wall -pipe -fno-strict-aliasing"
export CFLAGS=${CFLAGS/-D_FORTIFY_SOURCE=2/-D_FORTIFY_SOURCE=1}

export COMMON_OPTIONS="\
    --with-vim-name=vim \
    --with-ex-name=ex \
    --with-view-name=view \
    --enable-cscope \
    --enable-multibyte \
    --with-features=huge \
    --with-compiledby='http://www.opensuse.org/' \
%if 0%{?suse_version} > 1210
    --with-tlib=tinfo \
%else
    --with-tlib=ncurses \
%endif
    --with-global-runtime=%{site_runtimepath} \
    --enable-luainterp=dynamic \
    --enable-perlinterp=dynamic \
    --enable-pythoninterp=dynamic \
    --enable-python3interp=dynamic \
    --enable-rubyinterp=dynamic"

export GUI_OPTIONS="\
    --enable-xim \
    --enable-fontset \
    --enable-gui=gtk2"

pushd src
autoconf
popd

# build vim
%configure ${COMMON_OPTIONS} --disable-gui --disable-gpm
sed -i -e 's|define HAVE_DATE_TIME 1|undef HAVE_DATE_TIME|' src/auto/config.h
%make
cp src/vim vim

# build gvim
make distclean
%configure ${COMMON_OPTIONS} ${GUI_OPTIONS}
sed -i -e 's|define HAVE_DATE_TIME 1|undef HAVE_DATE_TIME|' src/auto/config.h
%make

#
# build vitmp
gcc %{optflags} %{SOURCE13} -o vitmp

%install
%if 0%{?suse_version}
%makeinstall STRIP=:
%else
%makeinstall STRIP=: DESTDIR=%{buildroot}
%endif
# create icon directory to have the icons installed and convert them to all hicolor expected sizes.
%if 0%{?suse_version}
for size in %{_datadir}/icons/hicolor/*[0-9]x[0-9]*; do
  SIZE=$(echo $size | awk -Fx {'print $2}')
  install -d -m 0755 %{buildroot}%{_datadir}/icons/hicolor/${SIZE}x${SIZE}/apps
  rsvg-convert -h ${SIZE} -w ${SIZE} %{S:24} -o %{buildroot}%{_datadir}/icons/hicolor/${SIZE}x${SIZE}/apps/gvim.png
done
%endif
install -d -m 0755 %{buildroot}%{_datadir}/icons/hicolor/scalable/apps
install -d -m 0755 %{buildroot}%{_datadir}/icons/hicolor/1024x1024/apps/
%if 0%{?suse_version}
install -m 0644 %{SOURCE24} %{buildroot}%{_datadir}/icons/hicolor/scalable/apps/gvim.svg
%endif
%if 0%{?fedora}
install -m 0644 %{SOURCE25} %{buildroot}%{_datadir}/icons/hicolor/1024x1024/apps/gvim.png
%endif

# the last installed binary is gvim. preserve it and
# fix its symlinks. e* was added here as it doesnt make much sense in
# console
mv %{buildroot}%{_bindir}/vim %{buildroot}%{_bindir}/gvim
for f in egvim egview eview evim gex gvi gview gvimdiff rgview rgvim ; do
    ln -s -vf gvim %{buildroot}%{_bindir}/$f
done

# install vim
install -D -m 0755 vim %{buildroot}/bin/vim

# compat symlinks
ln -s -f /bin/vim   %{buildroot}/bin/vi
ln -s -f /bin/vim   %{buildroot}%{_bindir}/vim
ln -s -f /bin/vim   %{buildroot}%{_bindir}/vi
ln -s -f vim        %{buildroot}%{_bindir}/edit
ln -s -f /bin/vim   %{buildroot}/bin/ex

# man pages
ln -s -f vim.1.gz %{buildroot}%{_mandir}/man1/vi.1.gz
ln -s -f vim.1.gz %{buildroot}%{_mandir}/man1/ex.1.gz

# vitmp
install -m 0755 vitmp       %{buildroot}%{_bindir}/vitmp
install -m 0644 %{SOURCE14} %{buildroot}%{_mandir}/man1/vitmp.1
install -m 0755 %{SOURCE15} %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/tools/vim132

# make the vim settings more generic
ln -s -f %{VIM_SUBDIR} %{buildroot}%{_datadir}/vim/current

# additional files
install -D -m 0644 %{SOURCE3} %{buildroot}%{_sysconfdir}/vimrc
install -D -m 0644 %{SOURCE8} %{buildroot}%{_sysconfdir}/gvimrc

# create site wide runtime directory
mkdir -p -m 0755 %{buildroot}%{site_runtimepath}/after
mkdir -m 0755 %{buildroot}%{site_runtimepath}/autoload
mkdir -m 0755 %{buildroot}%{site_runtimepath}/colors
mkdir -m 0755 %{buildroot}%{site_runtimepath}/doc
mkdir -m 0755 %{buildroot}%{site_runtimepath}/plugin
mkdir -m 0755 %{buildroot}%{site_runtimepath}/syntax
mkdir -m 0755 %{buildroot}%{site_runtimepath}/ftdetect
mkdir -m 0755 %{buildroot}%{site_runtimepath}/after/syntax
mkdir -m 0755 %{buildroot}%{_datadir}/vim/current/skeletons
mkdir -m 0755 %{buildroot}%{_sysconfdir}/skel

# install spec helper
install -m 0644 %{SOURCE20}  %{buildroot}%{_datadir}/vim/current/skeletons/skeleton.spec

# desktop file for gvim
install -D -m 0644 %{SOURCE19} %{buildroot}%{_datadir}/applications/gvim.desktop
%if 0%{?suse_version}
%suse_update_desktop_file gvim Utility TextEditor
%endif

#
# documentation
install -d -m 0755 %{buildroot}%{_docdir}/{,g}vim/
cp runtime/doc/uganda.txt LICENSE
install -D -m 0644 \
    vimrc_example1 vimrc_example2 suse.vimrc \
    LICENSE README.txt README_src.txt README_unix.txt \
  %{buildroot}%{_docdir}/vim/
# gvim
install -D -m 0644 \
    README.Japanese-XIM runtime/gvimrc_example.vim suse.gvimrc \
  %{buildroot}%{_docdir}/gvim/
#
# stupid helper
install -m 0755 %{SOURCE18} %{buildroot}%{_datadir}/vim/current/tools/missing-vim-client

# remove unecessary duplicate manpages
rm -rf %{buildroot}%{_mandir}/fr.ISO8859-1/
rm -rf %{buildroot}%{_mandir}/fr.UTF-8/
rm -rf %{buildroot}%{_mandir}/pl.ISO8859-2/
rm -rf %{buildroot}%{_mandir}/pl.UTF-8/
rm -rf %{buildroot}%{_mandir}/ru.KOI8-R/
rm -rf %{buildroot}%{_mandir}/it.ISO8859-1/
rm -rf %{buildroot}%{_mandir}/it.UTF-8/

# and move russian manpages to a place where they can be found
mv %{buildroot}%{_mandir}/ru.UTF-8 %{buildroot}%{_mandir}/ru

# remove some c source files
rm -f %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/tools/*.c
rm -f %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/macros/maze/*.c

# Remove sample server to avoid python dependency
rm %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/tools/demoserver.py

# Create ghost files (see vim.conf)
mkdir -p %{buildroot}/var/run/vi.recover

%fdupes -s %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/lang
%fdupes -s %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/tutor
%fdupes -s %{buildroot}%{_datadir}/vim/%{VIM_SUBDIR}/ftplugin

%check
# Reset the terminal scrolling region left behind by the testsuite
trap "printf '\e[r'" EXIT
# Look for "TEST FAILURE" in the build log
make test

%post -n gvim
%icon_theme_cache_post

%postun -n gvim
%icon_theme_cache_postun

%files
%defattr(-,root,root,-)
%config(noreplace) %{_sysconfdir}/vimrc
# symlinks
/bin/vi
/bin/vim
/bin/ex
%{_bindir}/edit
%{_bindir}/ex
%{_bindir}/rview
%{_bindir}/rvim
%{_bindir}/vi
%{_bindir}/vim
%{_bindir}/view
%{_bindir}/vimdiff
# additional binaries
%{_bindir}/vitmp
%{_bindir}/vimtutor
%if 0%{?suse_version}
%{_bindir}/gvimtutor
%endif
%{_bindir}/xxd
# man pages
%{_mandir}/man1/*
%dir %{_mandir}/fr
%dir %{_mandir}/fr/man1/
%{_mandir}/fr/man1/*
%dir %{_mandir}/it
%dir %{_mandir}/it/man1/
%{_mandir}/it/man1/*
%dir %{_mandir}/ru
%dir %{_mandir}/ru/man1/
%{_mandir}/ru/man1/*
%dir %{_mandir}/pl
%dir %{_mandir}/pl/man1/
%{_mandir}/pl/man1/*
%dir %{_mandir}/ja
%dir %{_mandir}/ja/man1/
%{_mandir}/ja/man1/*
# docs and data file
%doc %{_docdir}/vim
#
%{_datadir}/vim/current
%dir %{_datadir}/vim/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/autoload/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/colors/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/compiler/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/doc/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/ftplugin/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/indent/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/keymap/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/lang/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/macros/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/plugin/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/print/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/spell/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/syntax/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/tools/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/tutor/
%dir %{_datadir}/vim/%{VIM_SUBDIR}/skeletons/
%dir %{site_runtimepath}
%dir %{site_runtimepath}/autoload/
%dir %{site_runtimepath}/colors/
%dir %{site_runtimepath}/doc/
%dir %{site_runtimepath}/plugin/
%dir %{site_runtimepath}/syntax/
%dir %{site_runtimepath}/ftdetect/
%dir %{site_runtimepath}/after/
%dir %{site_runtimepath}/after/syntax/
#
%{_datadir}/vim/%{VIM_SUBDIR}/bugreport.vim
%{_datadir}/vim/%{VIM_SUBDIR}/evim.vim
%{_datadir}/vim/%{VIM_SUBDIR}/filetype.vim
%{_datadir}/vim/%{VIM_SUBDIR}/ftoff.vim
%{_datadir}/vim/%{VIM_SUBDIR}/ftplugin.vim
%{_datadir}/vim/%{VIM_SUBDIR}/ftplugof.vim
%{_datadir}/vim/%{VIM_SUBDIR}/indent.vim
%{_datadir}/vim/%{VIM_SUBDIR}/indoff.vim
%{_datadir}/vim/%{VIM_SUBDIR}/optwin.vim
%{_datadir}/vim/%{VIM_SUBDIR}/scripts.vim
%{_datadir}/vim/%{VIM_SUBDIR}/syntax/syntax.vim
%{_datadir}/vim/%{VIM_SUBDIR}/skeletons/skeleton.spec
# stupid helper
# THIS BREAKS THE BUILD: %{_datadir}/vim/current/tools/missing-vim-client
%{_datadir}/vim/%{VIM_SUBDIR}/tools/missing-vim-client

%files data
%defattr(-,root,root,-)
# data files
%{_datadir}/vim/%{VIM_SUBDIR}/autoload/*
%{_datadir}/vim/%{VIM_SUBDIR}/colors/*
%{_datadir}/vim/%{VIM_SUBDIR}/compiler/*
%{_datadir}/vim/%{VIM_SUBDIR}/doc/*
%{_datadir}/vim/%{VIM_SUBDIR}/ftplugin/*
%{_datadir}/vim/%{VIM_SUBDIR}/indent/*
%{_datadir}/vim/%{VIM_SUBDIR}/keymap/*
%{_datadir}/vim/%{VIM_SUBDIR}/lang/*
%{_datadir}/vim/%{VIM_SUBDIR}/macros/*
%{_datadir}/vim/%{VIM_SUBDIR}/plugin/*
%{_datadir}/vim/%{VIM_SUBDIR}/print/*
%{_datadir}/vim/%{VIM_SUBDIR}/spell/*
%{_datadir}/vim/%{VIM_SUBDIR}/syntax/*
%exclude %{_datadir}/vim/%{VIM_SUBDIR}/syntax/syntax.vim
#%{_datadir}/vim/%{VIM_SUBDIR}/tools/blink.c
%{_datadir}/vim/%{VIM_SUBDIR}/tools/ccfilter.1
#%{_datadir}/vim/%{VIM_SUBDIR}/tools/ccfilter.c
%{_datadir}/vim/%{VIM_SUBDIR}/tools/ccfilter_README.txt
%{_datadir}/vim/%{VIM_SUBDIR}/tools/efm_filter.pl
%{_datadir}/vim/%{VIM_SUBDIR}/tools/efm_filter.txt
%{_datadir}/vim/%{VIM_SUBDIR}/tools/efm_perl.pl
%{_datadir}/vim/%{VIM_SUBDIR}/tools/mve.awk
%{_datadir}/vim/%{VIM_SUBDIR}/tools/mve.txt
%{_datadir}/vim/%{VIM_SUBDIR}/tools/pltags.pl
%{_datadir}/vim/%{VIM_SUBDIR}/tools/README.txt
%{_datadir}/vim/%{VIM_SUBDIR}/tools/ref
%{_datadir}/vim/%{VIM_SUBDIR}/tools/shtags.1
%{_datadir}/vim/%{VIM_SUBDIR}/tools/shtags.pl
%{_datadir}/vim/%{VIM_SUBDIR}/tools/unicode.vim
%{_datadir}/vim/%{VIM_SUBDIR}/tools/vim132
%{_datadir}/vim/%{VIM_SUBDIR}/tools/vimm
%{_datadir}/vim/%{VIM_SUBDIR}/tools/vimspell.sh
%{_datadir}/vim/%{VIM_SUBDIR}/tools/vimspell.txt
%{_datadir}/vim/%{VIM_SUBDIR}/tools/vim_vs_net.cmd
#%{_datadir}/vim/%{VIM_SUBDIR}/tools/xcmdsrv_client.c
%{_datadir}/vim/%{VIM_SUBDIR}/tutor/*
%{_datadir}/vim/%{VIM_SUBDIR}/delmenu.vim
%{_datadir}/vim/%{VIM_SUBDIR}/gvimrc_example.vim
%{_datadir}/vim/%{VIM_SUBDIR}/menu.vim
%{_datadir}/vim/%{VIM_SUBDIR}/mswin.vim
%{_datadir}/vim/%{VIM_SUBDIR}/synmenu.vim
%{_datadir}/vim/%{VIM_SUBDIR}/vimrc_example.vim

%files -n gvim
%defattr(-,root,root,-)
%doc runtime/doc/gui_x11.txt
%ghost %config(missingok) %{_sysconfdir}/gvimrc
%{_bindir}/egview
%{_bindir}/egvim
%{_bindir}/eview
%{_bindir}/evim
%{_bindir}/gex
%{_bindir}/gvi
%{_bindir}/gview
%{_bindir}/gvim
%{_bindir}/gvimdiff
%{_bindir}/rgview
%{_bindir}/rgvim
# menu icon
%{_datadir}/applications/gvim.desktop
%{_datadir}/icons/hicolor/*/apps/gvim.*
%doc %{_docdir}/gvim

%changelog
~~~
