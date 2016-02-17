## ZYpp
[**ZYpp**](https://en.opensuse.org/Portal:Zypper) (also known as **libzypp**) is the default package manager of openSUSE, SUSE Linux Enterprise (SLE) and their derivatives. ZYpp provides the libraries for openSUSE's default command-line package manager, [`zypper`](/man/zypper.8.html) and its default graphical package manager, YaST. ZYpp serves as a front-end for the RPM package manager, providing advanced features like repository management, dependency resolution, *etc.*, making it similar to DNF and yum in that regard. ZYpp unlike most other RPM package manager front-ends I am aware of (the only exception is, of course, APT-RPM), is written predominantly in the compiled language, C++, as opposed to DNF and yum which are written mostly in the interpreted language, Python, and urpmi which is written in the interpreted language, Perl. The significance of this, from the point of view of users, is that it may give ZYpp a speed advantage over these package managers. Zypper is written in C++ too while YaST is written in Ruby (another interpreted language, equally, if not more, slow than Perl or Python).


### Speed
On openSUSE Leap 42.1 running {% include Code/coders.html line1="time zypper in -y --force vim" %} returned:

~~~
Warning: Legacy commandline option -y/--no-confirm detected. Please use global option -n/--non-interactive instead.
Loading repository data...
Reading installed packages...
Forcing installation of 'vim-7.4.326-3.10.x86_64' from repository 'Main Repository (OSS)'.
Resolving package dependencies...

The following package is going to be reinstalled:
  vim

1 package to reinstall.
Overall download size: 0 B. Already cached: 1.2 MiB. No additional space will be used or
freed after the operation.
Continue? [y/n/? shows all options] (y): y
In cache vim-7.4.326-3.10.x86_64.rpm               (1/1),   1.2 MiB (  2.6 MiB unpacked)
Checking for file conflicts: .....................................................[done]
(1/1) Installing: vim-7.4.326-3.10 ...............................................[done]

real    0m12.328s
user    0m2.272s
sys     0m0.488s
~~~

On my openSUSE Tumbleweed VM I received longer reinstall times, of (the hyperlinks are to where the full output can be found) [19.604s](https://gist.github.com/fusion809/4101245256b3bdb9eb46) and [20.312s](https://gist.github.com/fusion809/37d917ada854db67dec8), respectively. I decided to show the smallest time as I believe from using ZYpp on my non-virtual installation of openSUSE Tumbleweed that these figures were unexpectedly large.

{% include_relative ZYpp/table-7-basic-usage-examples.html %}
