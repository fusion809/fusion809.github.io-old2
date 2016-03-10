### In a Chroot
**Chroot** (invoked by the [`chroot`](/man/chroot.1.html) command) is a Unix command that is used to change the apparent root for a given process and its children (that is, processes started by this "given process"). This means, or so is the hope, that the file system outside this new root (or new apparent root, which is something I will also call the **host file system**) should be unaffected by any actions performed in this new root. The new root, used by the chroot command, is also referred to by the term *chroot*, which can lead to some confusion. When one uses the chroot command to build packages one usually sets up a directory (which is used as the *apparent root* for the chroot command), with in it, the file system structure of the operating system one is intending to build packages for. I have fairly limited experience building packages in chroots and this is mostly limited to building in Gentoo / Sabayon chroots, so this section will mostly relate to building packages in Gentoo / Sabayon chroots.

For Gentoo / Sabayon chroots, I usually created a new directory `/root2` wherein I would create a file system that resembles a minimal (with only the bare essential programs pre-installed) installation of Gentoo / Sabayon. I did this by extracting a stage3 tarball for the respective OS, into the `/root2` directory. Then I bound up the necessary parts of my host system (like `/dev`, `/proc`, `/sys` and `/tmp`), copied my `/etc/resolv.conf` file, to their respective parts in the `/root2` directory. This I did, by running (as root):

~~~ bash
mount -t proc none /root2/proc
mount -o bind /dev /root2/dev
mkdir /root2/usr/portage
mount -o bind /usr/portage /root2/usr/portage
mkdir /root2/usr/src/linux
mount -o bind /usr/src/linux /root2/usr/src/linux
mkdir /root2/lib/modules
mount -o bind /lib/modules /root2/lib/modules
mount -o bind /sys /root2/sys
cp /etc/resolv.conf /root2/etc/resolv.conf
mount -o bind /tmp /root2/tmp
~~~

In order to use chroot to build packages one must have at least a basic understanding of the chroot command's syntax. GNU's chroot command has the following basic syntax (taken from the [CHROOT(1)](/man/chroot.1.html) man page):

{% include Code/coder.html line1="chroot [OPTION] NEWROOT [COMMAND [ARG]...]" %}

Now, the way you should interpret this basic syntax, is that what appears in square-brackets (`[...]`), are *optional* arguments or inputs. What is not in square brackets is a mandatory input. For me, I have never had to concern myself with the `[OPTION]` part of this basic syntax, so I will ignore it in this post. `NEWROOT`, as you can probably guess, is the new apparent root being used by all processes started by the chroot command, which in the aforementioned examples for Gentoo / Sabayon chroots would be `/root2`. `[COMMAND]` is usually set, when building packages in the chroot, at least, to `/bin/bash` or some other Unix shell's path in the new chroot. 
