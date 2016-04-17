## Package Development

### Arch Linux
The **Arch Linux Packages** (**ALPs**) I develop or maintain are found in three locations, although some packages can be found in more than one of these locations. These locations are:

* [Arch User Repository](https://aur.archlinux.org/packages/?SeB=m&K=fusion809)
* My {% include Links/fusgr.md repo="PKGBUILDs" %} GitHub repository.
* {% include Links/obs.md project="home:fusion809:arch_extra" name="My Arch_Extra OBS Project" %}

### Gentoo / Sabayon Linux
They are stored in {% include Links/fusgr.md repo="sabayon-tools" puncr="," %} I use Docker to maintain this overlay, and I am afraid some packages in it inadvertently fall through the cracks.

### Fedora / openSUSE
They are stored in one of two locations:

* My {% include Links/fusgr.md repo="rpmbuild" %} GitHub repository &mdash; I only store packages here that require an Internet connection during the build. For example, an `atom` and `atom-beta` package. The RPMs contained therein are only designed to compatible with openSUSE, so they may not work on Fedora.
* [My Home OBS Project](https://build.opensuse.org/project/show/home:fusion809/). This contains packages that are built for both Fedora and openSUSE.
* [My openSUSE OBS Project](https://build.opensuse.org/project/show/home:fusion809:opensuse/). This contains packages that are built for openSUSE only.
