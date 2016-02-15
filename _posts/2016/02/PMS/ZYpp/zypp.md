## ZYpp
`time zypper in -y --force vim`

~~~
Warning: Legacy commandline option -y/--no-confirm detected. Please use global option -n/--non-interactive instead.
Loading repository data...
Reading installed packages...
Forcing installation of 'vim-7.4.1194-1.1.x86_64' from repository 'openSUSE-Tumbleweed-Oss'.
Resolving package dependencies...

The following package is going to be reinstalled:
  vim

1 package to reinstall.
Overall download size: 1.3 MiB. Already cached: 0 B. No additional space will be
used or freed after the operation.
Continue? [y/n/? shows all options] (y): y
Retrieving package vim-7.4.1194-1.1.x86_64 (1/1),   1.3 MiB (  2.8 MiB unpacked)
Retrieving: vim-7.4.1194-1.1.x86_64.rpm ....................[done (454.9 KiB/s)]
Checking for file conflicts: .............................................[done]
(1/1) Installing: vim-7.4.1194-1.1 .......................................[done]

real	0m20.312s
user	0m1.652s
sys	0m0.544s
~~~

This seems to give a total time for reinstallation of 20.312s, which unfortunately includes the download time (and as this output does not say the download time, it is impossible to discount it manually from this figure).
