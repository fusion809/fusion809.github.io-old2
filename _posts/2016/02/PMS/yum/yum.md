## yum
[**Yellowdog Updater, Modified**](http://yum.baseurl.org/) (**yum**) is a front-end for the RPM package manager that is written in Python. Prior to the release of Fedora 22 in May 2015 it was the default package manager of Fedora, and it is still the default package manager of CentOS, Oracle Linux, Red Hat Enterprise Linux (RHEL) and Scientific Linux. yum, as its name suggests, started off as a modified version of the Yellowdog Updater (YUP) used by the Yellow Dog Linux distribution, that was developed for use by the Red Hat Linux systems at Duke University in the early 2000s. Later it was adopted by CentOS, Fedora and their descendants, along with Yellow Dog Linux itself. yum provides amongst the most detailed output, of any package manager I am familiar with. Its development has been ceased in favour 

### Speed
The output of {% include Code/coders.html line1="time yum reinstall -y vim-common" %} was:
~~~
Loaded plugins: fastestmirror, langpacks
Loading mirror speeds from cached hostfile
 * base: mirror.overthewire.com.au
 * extras: mirror.overthewire.com.au
 * updates: mirror.overthewire.com.au
Resolving Dependencies
--> Running transaction check
---> Package vim-common.x86_64 2:7.4.160-1.el7 will be reinstalled
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================
 Package            Arch           Version                   Repository    Size
================================================================================
Reinstalling:
 vim-common         x86_64         2:7.4.160-1.el7           base         5.9 M

Transaction Summary
================================================================================
Reinstall  1 Package

Total download size: 5.9 M
Installed size: 21 M
Downloading packages:
vim-common-7.4.160-1.el7.x86_64.rpm                        | 5.9 MB   00:06     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 2:vim-common-7.4.160-1.el7.x86_64                            1/1
  Verifying  : 2:vim-common-7.4.160-1.el7.x86_64                            1/1

Installed:
  vim-common.x86_64 2:7.4.160-1.el7                                             

Complete!

real    0m14.461s
user    0m3.574s
sys     0m1.619s
~~~

discounting the time taken to perform the download (6 seconds) this give a real time to reinstall `vim-common` of **8.461s**. Must admit this seems wrong as it is less time than DNF took to install the same package.
