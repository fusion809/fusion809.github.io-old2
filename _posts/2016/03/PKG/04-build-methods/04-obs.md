### Open Build Service
{% include Layouts/notei.md note1="An openSUSE-focused Open Build Service tutorial can be found [here](https://en.opensuse.org/openSUSE:Build_Service_Tutorial) at the *openSUSE Wiki*." %}

The [**Open Build Service**](http://openbuildservice.org/) (**OBS**) is the only method outlined here that not only builds packages, but also sets up a repository with which you can distribute your packages. It has a command-line client invoked by the [`osc`](/man/osc.1.html) command, which is written in Python, and can be run locally to build packages. The problem with this command is that it is not available from the official repositories of most distributions that the OBS can build packages for. `osc` has several additional dependencies (like `obs-build`) that are not necessarily available from the official repositories of most distributions, too, which adds to the difficulty of obtaining it on these distributions. For details on installing the OBS on non-openSUSE platforms see the [Installing](#toc29) section of this post.

#### Installing
On **openSUSE**, installing `osc` and its dependencies is simple, merely run:

{% include Code/coder.html line1="zypper in osc" %}

and it is installed! One way, that one can install `osc` and all its dependencies on non-openSUSE distributions is by manually compiling them all from source code. Now I am no expert, in fact, I have not tried installing these packages, manually from source code, on any distribution other than Arch Linux, so if there are gaps or flat out errors in this brief tutorial, please [contact me](/contributing/) or fork the [fusion809.github.io](https://github.com/fusion809/fusion809.github.io) GitHub repo, modify the `_posts/2016/03/PKG/04-build-methods/04-obs.md` file in your fork and start a pull request. Firstly, ensure you have the following packages installed on your system:[^2]

* `bash`
* `diffutils`
* `libxml2`
* `perl`
* `perl-uri`
* `python-keyring`
* `python2`
* `python2-m2crypto`
* `rpm` (if you are using a RPM-based distribution like CentOS, Fedora, Mageia, Red Hat Enterprise Linux, Scientific Linux, *etc.* this shold be pre-installed)
* `urlgrabber`
* `wget`
* `xz`
