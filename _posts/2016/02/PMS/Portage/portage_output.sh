
 * IMPORTANT: 2 news items need reading for repository 'gentoo'.
 * Use eselect news read to view new items.

Calculating dependencies  ...... done!

>>> Verifying ebuild manifests

>>> Emerging (1 of 1) app-editors/vim-7.4.1342::sabayon-tools
 * vim-7.4.1342.tar.gz SHA256 SHA512 WHIRLPOOL size ;-) ...              [ ok ]
 * vim-7.4.827-gentoo-patches.tar.bz2 SHA256 SHA512 WHIRLPOOL size ;-) ... [ ok ]
>>> Unpacking source...
>>> Unpacking vim-7.4.1342.tar.gz to /var/tmp/portage/app-editors/vim-7.4.1342/work
>>> Unpacking vim-7.4.827-gentoo-patches.tar.bz2 to /var/tmp/portage/app-editors/vim-7.4.1342/work
>>> Source unpacked in /var/tmp/portage/app-editors/vim-7.4.1342/work
>>> Preparing source in /var/tmp/portage/app-editors/vim-7.4.1342/work/vim-7.4.1342 ...
>>> Source prepared.
>>> Configuring source in /var/tmp/portage/app-editors/vim-7.4.1342/work/vim-7.4.1342 ...
make -j16 -s -j1 -C src autoconf 
 * python2_7: running py_add_interp
 * python3_4: running py_add_interp
./configure --prefix=/usr --build=x86_64-pc-linux-gnu --host=x86_64-pc-linux-gnu --mandir=/usr/share/man --infodir=/usr/share/info --datadir=/usr/share --sysconfdir=/etc --localstatedir=/var/lib --libdir=/usr/lib64 --with-modified-by=Gentoo-7.4.1342 --with-features=huge --enable-multibyte --enable-acl --enable-cscope --enable-gpm --enable-luainterp --with-lua-prefix=/usr --without-luajit --enable-nls --enable-perlinterp --disable-mzschemeinterp --enable-rubyinterp --disable-selinux --disable-tclinterp --enable-pythoninterp vi_cv_path_python=/usr/bin/python2.7 --enable-python3interp vi_cv_path_python3=/usr/bin/python3.4 --enable-gui=no --disable-darwin --with-x
configure: creating cache auto/config.cache
checking whether make sets $(MAKE)... yes
checking for x86_64-pc-linux-gnu-gcc... x86_64-pc-linux-gnu-gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether x86_64-pc-linux-gnu-gcc accepts -g... yes
checking for x86_64-pc-linux-gnu-gcc option to accept ISO C89... none needed
checking how to run the C preprocessor... x86_64-pc-linux-gnu-gcc -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for library containing strerror... none required
checking for gawk... gawk
checking for strip... (cached) /bin/true faking strip
checking for ANSI C header files... yes
checking for sys/wait.h that is POSIX.1 compatible... yes
checking --enable-fail-if-missing argument... no
checking for recent clang version... no
configure: checking for buggy tools...
- sh is	'GNU bash, version 4.3.42(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2013 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.' - probably OK.
checking for BeOS... no
checking for QNX... no
checking for Darwin (Mac OS X)... no
checking AvailabilityMacros.h usability... no
checking AvailabilityMacros.h presence... no
checking for AvailabilityMacros.h... no
checking --with-local-dir argument... Defaulting to /usr/local
checking --with-vim-name argument... Defaulting to vim
checking --with-ex-name argument... Defaulting to ex
checking --with-view-name argument... Defaulting to view
checking --with-global-runtime argument... no
checking --with-modified-by argument... Gentoo-7.4.1342
checking if character set is EBCDIC... no
checking --disable-smack argument... no
checking linux/xattr.h usability... yes
checking linux/xattr.h presence... yes
checking for linux/xattr.h... yes
checking attr/xattr.h usability... yes
checking attr/xattr.h presence... yes
checking for attr/xattr.h... yes
checking for XATTR_NAME_SMACKEXEC in linux/xattr.h... no
checking --disable-selinux argument... yes
checking --with-features argument... huge
checking --with-compiledby argument... no
checking --disable-xsmp argument... no
checking --disable-xsmp-interact argument... no
checking --enable-luainterp argument... yes
checking --with-lua-prefix argument... /usr
checking --with-luajit... no
checking for lua... /usr/bin/lua
checking Lua version... 5.1
checking if lua.h can be found in /usr/include... yes
checking if link with -L/usr/lib -llua is sane... yes
checking --enable-mzschemeinterp argument... no
checking --enable-perlinterp argument... yes
checking for perl... /usr/bin/perl
checking Perl version... OK
checking if compile and link flags for Perl are sane... yes
checking --enable-pythoninterp argument... yes
checking for python2... /usr/bin/python2.7
checking Python version... 2.7
checking Python is 2.3 or better... yep
checking Python's install prefix... /usr
checking Python's execution prefix... /usr
checking Python's configuration directory... /usr/lib64/python2.7/config
checking Python's dll name... libpython2.7.so.1.0
checking if -pthread should be used... yes
checking if compile and link flags for Python are sane... yes
checking --enable-python3interp argument... yes
checking for python3... /usr/bin/python3.4
checking Python version... 3.4
checking Python is 3.0 or better... yep
checking Python's abiflags... 
checking Python's install prefix... /usr
checking Python's execution prefix... /usr
checking Python's configuration directory... /usr/lib64/python3.4/config-3.4
checking Python3's dll name... libpython3.4.so.1.0
checking if -pthread should be used... yes
checking if compile and link flags for Python 3 are sane... yes
checking whether we can do without RTLD_GLOBAL for Python... yes
checking whether we can do without RTLD_GLOBAL for Python3... yes
checking --enable-tclinterp argument... no
checking --enable-rubyinterp argument... yes
checking --with-ruby-command argument... defaulting to ruby
checking for ruby... /usr/bin/ruby
checking Ruby version... OK
checking Ruby rbconfig... RbConfig
checking Ruby header files... /usr/include/ruby-2.1.0
checking --enable-cscope argument... yes
checking --enable-workshop argument... no
checking --disable-netbeans argument... no
checking --disable-channel argument... no
checking for socket in -lsocket... no
checking for gethostbyname in -lnsl... yes
checking whether compiling with process communication is possible... yes
checking --enable-sniff argument... no
checking --enable-multibyte argument... yes
checking --enable-hangulinput argument... no
checking --enable-xim argument... defaulting to auto
checking --enable-fontset argument... no
checking for xmkmf... no
checking for X... libraries , headers 
checking for gethostbyname... yes
checking for connect... yes
checking for remove... yes
checking for shmat... yes
checking for IceConnectionNumber in -lICE... yes
checking if X11 header files can be found... yes
checking for _XdmcpAuthDoIt in -lXdmcp... yes
checking for IceOpenConnection in -lICE... yes
checking for XpmCreatePixmapFromData in -lXpm... yes
checking if X11 header files implicitly declare return values... no
checking size of wchar_t is 2 bytes... no
checking --enable-gui argument... no GUI support
checking X11/SM/SMlib.h usability... yes
checking X11/SM/SMlib.h presence... yes
checking for X11/SM/SMlib.h... yes
checking for CYGWIN or MSYS environment... no
checking whether toupper is broken... no
checking whether __DATE__ and __TIME__ work... yes
checking whether __attribute__((unused)) is allowed... yes
checking elf.h usability... yes
checking elf.h presence... yes
checking for elf.h... yes
checking for main in -lelf... yes
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking stdint.h usability... yes
checking stdint.h presence... yes
checking for stdint.h... yes
checking stdlib.h usability... yes
checking stdlib.h presence... yes
checking for stdlib.h... yes
checking string.h usability... yes
checking string.h presence... yes
checking for string.h... yes
checking sys/select.h usability... yes
checking sys/select.h presence... yes
checking for sys/select.h... yes
checking sys/utsname.h usability... yes
checking sys/utsname.h presence... yes
checking for sys/utsname.h... yes
checking termcap.h usability... yes
checking termcap.h presence... yes
checking for termcap.h... yes
checking fcntl.h usability... yes
checking fcntl.h presence... yes
checking for fcntl.h... yes
checking sgtty.h usability... yes
checking sgtty.h presence... yes
checking for sgtty.h... yes
checking sys/ioctl.h usability... yes
checking sys/ioctl.h presence... yes
checking for sys/ioctl.h... yes
checking sys/time.h usability... yes
checking sys/time.h presence... yes
checking for sys/time.h... yes
checking sys/types.h usability... yes
checking sys/types.h presence... yes
checking for sys/types.h... yes
checking termio.h usability... yes
checking termio.h presence... yes
checking for termio.h... yes
checking iconv.h usability... yes
checking iconv.h presence... yes
checking for iconv.h... yes
checking inttypes.h usability... yes
checking inttypes.h presence... yes
checking for inttypes.h... yes
checking langinfo.h usability... yes
checking langinfo.h presence... yes
checking for langinfo.h... yes
checking math.h usability... yes
checking math.h presence... yes
checking for math.h... yes
checking unistd.h usability... yes
checking unistd.h presence... yes
checking for unistd.h... yes
checking stropts.h usability... yes
checking stropts.h presence... yes
checking for stropts.h... yes
checking errno.h usability... yes
checking errno.h presence... yes
checking for errno.h... yes
checking sys/resource.h usability... yes
checking sys/resource.h presence... yes
checking for sys/resource.h... yes
checking sys/systeminfo.h usability... no
checking sys/systeminfo.h presence... no
checking for sys/systeminfo.h... no
checking locale.h usability... yes
checking locale.h presence... yes
checking for locale.h... yes
checking sys/stream.h usability... no
checking sys/stream.h presence... no
checking for sys/stream.h... no
checking termios.h usability... yes
checking termios.h presence... yes
checking for termios.h... yes
checking libc.h usability... no
checking libc.h presence... no
checking for libc.h... no
checking sys/statfs.h usability... yes
checking sys/statfs.h presence... yes
checking for sys/statfs.h... yes
checking poll.h usability... yes
checking poll.h presence... yes
checking for poll.h... yes
checking sys/poll.h usability... yes
checking sys/poll.h presence... yes
checking for sys/poll.h... yes
checking pwd.h usability... yes
checking pwd.h presence... yes
checking for pwd.h... yes
checking utime.h usability... yes
checking utime.h presence... yes
checking for utime.h... yes
checking sys/param.h usability... yes
checking sys/param.h presence... yes
checking for sys/param.h... yes
checking libintl.h usability... yes
checking libintl.h presence... yes
checking for libintl.h... yes
checking libgen.h usability... yes
checking libgen.h presence... yes
checking for libgen.h... yes
checking util/debug.h usability... no
checking util/debug.h presence... no
checking for util/debug.h... no
checking util/msg18n.h usability... no
checking util/msg18n.h presence... no
checking for util/msg18n.h... no
checking frame.h usability... no
checking frame.h presence... no
checking for frame.h... no
checking sys/acl.h usability... yes
checking sys/acl.h presence... yes
checking for sys/acl.h... yes
checking sys/access.h usability... no
checking sys/access.h presence... no
checking for sys/access.h... no
checking sys/sysinfo.h usability... yes
checking sys/sysinfo.h presence... yes
checking for sys/sysinfo.h... yes
checking wchar.h usability... yes
checking wchar.h presence... yes
checking for wchar.h... yes
checking wctype.h usability... yes
checking wctype.h presence... yes
checking for wctype.h... yes
checking for sys/ptem.h... no
checking for sys/sysctl.h... yes
checking for pthread_np.h... no
checking strings.h usability... yes
checking strings.h presence... yes
checking for strings.h... yes
checking if strings.h can be included after string.h... yes
checking whether x86_64-pc-linux-gnu-gcc needs -traditional... no
checking for an ANSI C-conforming const... yes
checking for working volatile... yes
checking for mode_t... yes
checking for off_t... yes
checking for pid_t... yes
checking for size_t... yes
checking for uid_t in sys/types.h... yes
checking for uint32_t... yes
checking whether time.h and sys/time.h may both be included... yes
checking for ino_t... yes
checking for dev_t... yes
checking whether byte ordering is bigendian... no
checking for rlim_t... yes
checking for stack_t... yes
checking whether stack_t has an ss_base field... no
checking --with-tlib argument... empty: automatic terminal library selection
checking for tgetent in -ltinfo... no
checking for tgetent in -lncurses... yes
checking whether we talk terminfo... yes
checking what tgetent() returns for an unknown terminal... zero
checking whether termcap.h contains ospeed... yes
checking whether termcap.h contains UP, BC and PC... yes
checking whether tputs() uses outfuntype... no
checking whether sys/select.h and sys/time.h may both be included... yes
checking for /dev/ptc... no
checking for SVR4 ptys... yes
checking for ptyranges... don't know
checking default tty permissions/group... can't determine - assume ptys are world accessible
world
checking return type of signal handlers... void
checking for struct sigcontext... yes
checking getcwd implementation is broken... no
checking for bcmp... yes
checking for fchdir... yes
checking for fchown... yes
checking for fsync... yes
checking for getcwd... yes
checking for getpseudotty... no
checking for getpwent... yes
checking for getpwnam... yes
checking for getpwuid... yes
checking for getrlimit... yes
checking for gettimeofday... yes
checking for getwd... yes
checking for lstat... yes
checking for memcmp... yes
checking for memset... yes
checking for mkdtemp... yes
checking for nanosleep... yes
checking for opendir... yes
checking for putenv... yes
checking for qsort... yes
checking for readlink... yes
checking for select... yes
checking for setenv... yes
checking for setpgid... yes
checking for setsid... yes
checking for sigaltstack... yes
checking for sigstack... yes
checking for sigset... yes
checking for sigsetjmp... no
checking for sigaction... yes
checking for sigvec... no
checking for strcasecmp... yes
checking for strerror... yes
checking for strftime... yes
checking for stricmp... no
checking for strncasecmp... yes
checking for strnicmp... no
checking for strpbrk... yes
checking for strtol... yes
checking for tgetent... yes
checking for towlower... yes
checking for towupper... yes
checking for iswupper... yes
checking for usleep... yes
checking for utime... yes
checking for utimes... yes
checking for _LARGEFILE_SOURCE value needed for large files... no
checking for special C compiler options needed for large files... no
checking for _FILE_OFFSET_BITS value needed for large files... no
checking for st_blksize... yes
checking whether stat() ignores a trailing slash... no
checking for iconv_open()... yes
checking for nl_langinfo(CODESET)... yes
checking for strtod in -lm... yes
checking for strtod() and other floating point functions... yes
checking --disable-acl argument... no
checking for acl_get_file in -lposix1e... no
checking for acl_get_file in -lacl... yes
checking for fgetxattr in -lattr... yes
checking for POSIX ACL support... yes
checking for acl_get in -lsec... no
checking for Solaris ACL support... no
checking for AIX ACL support... no
checking --disable-gpm argument... no
checking for gpm... yes
checking --disable-sysmouse argument... no
checking for sysmouse... no
checking for FD_CLOEXEC... yes
checking for rename... yes
checking for sysctl... not usable
checking for sysinfo... yes
checking for sysinfo.mem_unit... yes
checking for sysconf... yes
checking size of int... 4
checking size of long... 8
checking size of time_t... 8
checking size of off_t... 8
checking uint32_t is 32 bits... ok
checking whether memmove handles overlaps... yes
checking whether X_LOCALE needed... no
checking whether Xutf8SetWMProperties() can be used... yes
checking for _xpg4_setrunelocale in -lxpg4... no
checking how to create tags... exuberant-ctags -I INIT+ --fields=+S
checking how to run man with a section nr... man
checking --disable-nls argument... no
checking for msgfmt... msgfmt
checking for NLS... gettext() works
checking for bind_textdomain_codeset... yes
checking for _nl_msg_cat_cntr... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking for dlopen()... no
checking for dlopen() in -ldl... yes
checking for dlsym()... yes
checking setjmp.h usability... yes
checking setjmp.h presence... yes
checking for setjmp.h... yes
checking for GCC 3 or later... yes
checking whether we need -D_FORTIFY_SOURCE=1... yes
checking linker --as-needed support... yes
configure: updating cache auto/config.cache
configure: creating auto/config.status
config.status: creating auto/config.mk
config.status: creating auto/config.h
>>> Source configured.
>>> Compiling source in /var/tmp/portage/app-editors/vim-7.4.1342/work/vim-7.4.1342 ...
make -j16 -s -j1 -C src auto/osdef.h objects 
make -j16 -s 
Starting make in the src directory.
If there are problems, cd to the src directory and run make there
creating auto/pathdef.c
1423 translated messages.
1697 translated messages.
1284 translated messages.
1701 translated messages.
78 translated messages.
1905 translated messages.
1733 translated messages.
1768 translated messages.
1887 translated messages.
1888 translated messages.
1903 translated messages.
1898 translated messages.
1728 translated messages.
1728 translated messages.
1668 translated messages.
1213 translated messages.
1668 translated messages1869 translated messages.
1735 translated messages.
.
1628 translated messages1882 translated messages.
.
1697 translated messages.
1883 translated messages1422 translated messages.
.
1634 translated messages, 3 fuzzy translations.
1422 translated messages1633 translated messages, 3 fuzzy translations.
1422 translated messages1284 translated messages.
.
.
1898 translated messages1898 translated messages1869 translated messages.
1869 translated messages.
1882 translated messages.
1628 translated messages.
.
1883 translated messages.
1633 translated messages.
, 3 fuzzy translations.
link.sh: $LINK_AS_NEEDED set to 'yes': invoking linker directly.
  x86_64-pc-linux-gnu-gcc   -L. -Wl,-O1 -fstack-protector -rdynamic -Wl,-export-dynamic -Wl,--no-undefined -Wl,-E  -Wl,-O1 -Wl,--as-needed 	-o vim objects/buffer.o objects/blowfish.o objects/charset.o objects/crypt.o objects/crypt_zip.o objects/diff.o objects/digraph.o objects/edit.o objects/eval.o objects/ex_cmds.o objects/ex_cmds2.o objects/ex_docmd.o objects/ex_eval.o objects/ex_getln.o objects/fileio.o objects/fold.o objects/getchar.o objects/hardcopy.o objects/hashtab.o  objects/if_cscope.o objects/if_xcmdsrv.o objects/mark.o objects/memline.o objects/menu.o objects/message.o objects/misc1.o objects/misc2.o objects/move.o objects/mbyte.o objects/normal.o objects/ops.o objects/option.o objects/os_unix.o objects/pathdef.o objects/popupmnu.o objects/quickfix.o objects/regexp.o objects/screen.o objects/search.o objects/sha256.o objects/spell.o objects/syntax.o  objects/tag.o objects/term.o objects/ui.o objects/undo.o objects/version.o objects/window.o  objects/if_lua.o  objects/if_perl.o objects/if_perlsfio.o objects/if_python.o objects/if_python3.o  objects/if_ruby.o   objects/netbeans.o objects/channel.o  objects/json.o objects/main.o objects/memfile.o    -lSM -lICE -lXpm -lXt -lX11 -lXdmcp -lSM -lICE  -lm -lncurses -lelf -lnsl    -lacl -lattr -lgpm -ldl  -L/usr/lib -llua -Wl,-E -Wl,-O1 -Wl,--as-needed  -L/usr/lib64/perl5/5.20.2/x86_64-linux-thread-multi/CORE -lperl -lnsl -lnm -ldl -lm -lcrypt -lutil -lpthread -lc    -lruby21 -lpthread -lgmp -ldl -lcrypt -lm  -L/usr/lib64    
link.sh: Linked fine
>>> Source compiled.
>>> Test phase [not enabled]: app-editors/vim-7.4.1342

>>> Install vim-7.4.1342 into /var/tmp/portage/app-editors/vim-7.4.1342/image/ category app-editors
>>> Completed installing vim-7.4.1342 into /var/tmp/portage/app-editors/vim-7.4.1342/image/

strip: x86_64-pc-linux-gnu-strip --strip-unneeded -R .comment -R .GCC.command.line -R .note.gnu.gold-version
   usr/bin/vim

>>> Installing (1 of 1) app-editors/vim-7.4.1342::sabayon-tools
 * Updating documentation tags in /usr/share/vim/vim74
 * Calling eselect vi update...
 * Updating documentation tags in /usr/share/vim/vim74
 * Calling eselect vi update...
>>> Auto-cleaning packages...
portage: COUNTER for app-emulation/virtualbox-guest-additions-5.0.12 was corrupted; resetting to value of 0
portage: COUNTER for app-emulation/virtualbox-guest-additions-5.0.12 was corrupted; resetting to value of 0

>>> No outdated packages were found on your system.

 * GNU info directory index is up-to-date.

 * IMPORTANT: 2 news items need reading for repository 'gentoo'.
 * Use eselect news read to view new items.

