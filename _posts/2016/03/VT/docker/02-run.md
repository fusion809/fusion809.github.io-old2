The next step is to start your Docker container and run a command inside it. The most common such command, for Linux distributions anyway, is `/bin/bash` (that is, the Bash Unix shell). To do this one runs:

{% include Code/codeu.html line1="docker run $opts $ID $command" %}

where `$opts` are the Docker options (I usually use `-i -t` myself, so that the session is interactive (which the `-i` option specifies) and is from the command-line which `-t` specifies), `$ID` is the image ID for your Docker container and `$command` is the command you are running in the container (which as I previously mentioned, for me, when building software packages is usually `/bin/bash`). The image ID can be determined by running {% include Code/codeus.html line1="docker images" %}, which for me, for example, returns:

~~~ bash
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
debian-unstable       latest              9dd9fe468c9e        About an hour ago   323.3 MB
gentoo-amd64          latest              3e02cda6a803        2 hours ago         1.624 GB
<none>                <none>              31ed588c2fb5        4 hours ago         1.624 GB
opensuse              tumbleweed          d825b768fae4        11 hours ago        98.07 MB
opensuse              latest              7617deda9fe6        11 hours ago        97.67 MB
debian                unstable            3f1ef6d67fa7        7 days ago          118.8 MB
gentoo/stage3-amd64   latest              d23a7de89b05        12 days ago         832.3 MB
offlinehacker/nixos   latest              65f8b74f4779        5 weeks ago         530.5 MB
~~~

needless to say, the image ID can be found in the "Image ID" column of this output.

Docker containers are usually more "barebones" than their non-virtual or even VirtualBox counterparts, for example, if you use the official openSUSE Tumbleweed (giving the command {% include Code/codeus-rb.html line1="docker pull opensuse:tumbleweed" %} container, you will notice that the `sudo` Unix program is not even pre-installed on it. But there are advantages that come with this fact, for example, you will notice that in the output shown above, the size of my openSUSE Tumbleweed image is just 98.07 MB, while a fresh installation of openSUSE Tumbleweed (with the KDE desktop) in VirtualBox will likely be larger than 1 GB.

After you start running `/bin/bash` or some other Unix shell in your Docker container, you can commence following the usual package development process you would use if you were doing package development on an actual (that is, non-virtual) installation of the OS, in question. For example, to build RPM packages for CentOS, Fedora or openSUSE one may follow the guide at the [*Fedora Wiki*](http://fedoraproject.org/wiki/How_to_create_an_RPM_package).
