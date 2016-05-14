## Installers
I have created four shell script installers for some text editors/integrated development environments I am fond of. They are all very similar to one another, partly due to laziness and also partly due to how it simplifies things both from my point of view and from user's point of view. They all detect the operating system they are running on by looking at `/etc/os-release`. Due to this they will treat some derivative distributions (e.g., Linux Mint) as being the same as their parent distribution (in the previous example this would be Ubuntu).

### Atom
My [`atom-installer`](https://github.com/fusion809/atom-installer) repository is for installing Atom on Linux. It supports the following distributions:

{% capture list %}
* Arch Linux
* CentOS
* Debian
* Fedora
* Gentoo Linux
* Linux Mint
* Mageia
* Manjaro Linux
* openSUSE
* Sabayon Linux
* Ubuntu
{% endcapture %}{% include Layouts/column.html no="5" content=list %}

### Brackets
My [`brackets-installer`](https://github.com/fusion809/brackets-installer) repository is for installing Brackets on a variety of different Linux distributions, including:

{% capture list %}
* Arch Linux
* CentOS
* Debian
* Fedora
* Linux Mint
* Mageia
* Manjaro Linux
* openSUSE
* Sabayon Linux
* Ubuntu
{% endcapture %}{% include Layouts/column.html no="5" content=list %}

### LightTable
My [`lighttable-installer`](https://github.com/fusion809/lighttable-installer) repository is for installing LightTable on a variety of different Linux distributions, including:

{% capture list %}
* Arch Linux
* CentOS
* Debian
* Fedora
* Linux Mint
* Mageia
* Manjaro Linux
* openSUSE
* Sabayon Linux
* Ubuntu
{% endcapture %}{% include Layouts/column.html no="5" content=list %}


### Visual Studio Code
My [`VScode-installer`](https://github.com/fusion809/VScode-installer) repository is for installing Visual Studio Code on a variety of different Linux distributions, including:

{% capture list %}
* Arch Linux
* CentOS
* Debian
* Fedora
* Linux Mint
* Mageia
* Manjaro Linux
* openSUSE
* Sabayon Linux
* Ubuntu
{% endcapture %}{% include Layouts/column.html no="5" content=list %}
