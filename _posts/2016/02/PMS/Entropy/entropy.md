## Entropy
**Entropy** is the default package manager of Sabayon, although Sabayon also comes with the [Portage](#portage) package manager pre-installed, but only the use of Entropy is supported by the Sabayon community. Entropy has similarities to Portage, along with several key differences. It is written in Python and shell script, like Portage, but unlike Portage which by default installs software from source code following instructions found in ebuilds, Entropy installs software from binary packages. These binary packages are originally built using Portage, however, then they are converted to binary packages suitable for Entropy. Entropy has both an official command-line and graphical user interface; from the command-line it is called by the [`equo`](/man/equo.1.html) command, while Rigo is its GUI. Entropy is the second-youngest package manager mentioned in this post, after DNF, with its first public releases being in 2007 and its first stable releases becoming available in 2012.

### Beginner-Friendliness
It is a fairly beginner-friendly package manager, its command-line syntax is intuitive, for example, {% include Code/coders.html line1="equo install octave" %} should install GNU Octave, without prompting, while {% include Code/coders.html line1="equo remove octave" %} should uninstall it without prompting. The only prompting that Entropy does, unless you, the user, specify that it should by passing it the `--ask` or `-a` options to it, is asking if you accept any relevant package licenses that are not accepted by default. Its basic syntax is:
{% include Code/coder.html line1="equo [<i>action</i>] [option(s)] [<b>target</b>(<b>s</b>)]" no="2" space="65" %}
Several abbreviated actions exist, for example, `i` for `install`, `rm` for `remove`, `up` for `update` and `u` for `upgrade`. It has a graphical user interface which is always a nice beginner-friendly touch, I would rate its beginner-friendliness at 8/10.

### Customizability
As Entropy installs software from binary packages, there is no real freedom to customize the packages to your liking. Except by, of course, writing your own ebuild, or modifying existing ebuilds, to your liking and building and installing them. Or building/installing existing ebuilds in the Portage Tree or unofficial overlays with custom USE flags enabled. As far as customizing Entropy itself, there are several files in the `/etc/entropy` directory that can be used to customize Entropy's options.

### Development
Entropy package development is done in three major steps:

* The creation or selection of a suitable ebuild.
* The building of a Portage binary package from the ebuild by issuing the command {% include Code/coders-fs.html line1="ebuild $package.ebuild package" %} Or, if the ebuild is in a presently-enabled Portage overlay, run {% include Code/coders-fs.html line1="emerge -b $package" %} Where `$package.ebuild` is the name of the ebuild, including its file extensions, relative to the present working directory.
*  {% include Code/coders-fs.html line1="equo pkg inflate $package.tbz2" %} Where `$package.tbz2` is the binary package built by Portage, including its relative path to the present working directory. It is likely in the `/usr/portage/packages` directory.

### Features
Syntactically it is similar to both APT and Portage. See its options (e.g., `-a/--ask` for ask for confirmation before performing changes) are similar to Portage, but its actions are largely borrowed from APT. It cannot install packages from a URL, although it can install software from local packages. If you install a local package, that is also present (even if the version present there is different) in the Entropy repositories, then perform an upgrade odds are the package version in the Entropy repositories will be installed over it.

### Speed
Running {% include Code/coders.html line1="time equo i vim" %} returned:

~~~
╠  @@ Calculating dependencies...
╠ ::  (100.0%) Sorting dependencies ::
╠  ## [R] [sabayonlinux.org] app-editors/vim-7.4.827|3   [7.4.827|3]
╠  @@ Packages needing to be installed/updated/downgraded: 1
╠  @@ Packages needing to be removed: 0
╠  @@ Download size: 0b
╠  @@ Freed disk space: 0.0b
╠  @@ You need at least: 2.5MB of free space
╠  ::: >>>  (1/1) 1 package
╠    ## Downloading: 1 package
╠    ## ( mirror #1 ) [app-editors:vim-7.4.827.291a631e2a270baad1f13a4392ceb7af9191b601~3.tbz2] @ http://debian.mirror.dkm.cz
╠   ## Aggregated download: 1 item
╠    # [1] debian.mirror.dkm.cz => app-editors:vim-7.4.827.291a631e2a270baad1f13a4392ceb7af9191b601~3.tbz2
╠    ## Checking package checksum...
╠    ## ( mirror #1 ) [app-editors:vim-7.4.827.291a631e2a270baad1f13a4392ceb7af9191b601~3.tbz2] success @ http://debian.mirror.dkm.cz
╠  +++ >>>  (1/1) app-editors/vim-7.4.827
╠    ## Unpacking: app-editors:vim-7.4.827.291a631e2a270baad1f13a4392ceb7af9191b601~3.tbz2
╠    ## Package phase: setup
╠    ## Installing package: app-editors/vim-7.4.827
╠    ## [Vim, an improved vi-style text editor]
╠    ## Updating installed packages repository: app-editors/vim-7.4.827
╠    ## Cleaning previously installed application data.
╠    ## Package phase: postremove
 * Updating documentation tags in /usr/share/vim/vim74
 * Calling eselect vi update...
╠    ## Package phase: postinstall
 * Updating documentation tags in /usr/share/vim/vim74
 * Calling eselect vi update...
╠    ## Cleaning: app-editors/vim-7.4.827
╠  @@ Installation complete.
╠  @@ Scanning configuration files to update
╠  @@ No configuration files to update.

real	0m7.621s
user	0m5.287s
sys	0m1.467s
~~~
