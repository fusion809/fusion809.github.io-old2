## yum
[**Yellowdog Updater, Modified**](http://yum.baseurl.org/) (**yum**) is a front-end for the RPM package manager that is written in Python. Prior to 

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

discounting the time taken to perform the download (6 seconds) this give a real time to reinstall `vim-common` of **8.461s**.
