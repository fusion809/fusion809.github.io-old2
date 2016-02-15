## pacman
[**pacman**](https://www.archlinux.org/pacman/) is the default package manager of Arch Linux and its various derivatives as well as at least two supposedly independent distributions, Frugalware and KaOS.

From {% include Code/coders.html line1="time pacman -S vim --noconfirm" directory="/home/fusion809" %} I got the output:

~~~
warning: vim-7.4.1294-1 is up to date -- reinstalling
resolving dependencies...
looking for conflicting packages...

Packages (1) vim-7.4.1294-1

Total Installed Size:  2.70 MiB
Net Upgrade Size:      0.00 MiB

:: Proceed with installation? [Y/n]
(1/1) checking keys in keyring                     [######################] 100%
(1/1) checking package integrity                   [######################] 100%
(1/1) loading package files                        [######################] 100%
(1/1) checking for file conflicts                  [######################] 100%
(1/1) checking available disk space                [######################] 100%
:: Processing package changes...
(1/1) reinstalling vim                             [######################] 100%

real	0m0.464s
user	0m0.227s
sys	0m0.067s
~~~

so it took **0.464s** total to reinstall this package.
