---
last_modified_at: 2016-11-15 +1000
layout:           post
date:             2016-11-20 +1000
permalink:        /how-to-create-appimages/
title:            "How to create your own AppImages"
tags:
  - AppImage
---

**AppImages** are my personal favourite cross-distribution packaging format, this is because unlike most packaging formats they are compact (which is something that binary tarballs lack, when they are decompressed in order to be run, that is) and do not need root privileges in order to be run. As with many other cross-distribution packaging formats, the fact that many upstream projects have not adopted the format as the primary way they distribute their software in binary form, is a real disappointment and roadblock hindering its widespread adoption. In my own personal efforts to counter this problem I have decided to write this post documenting the basics of how to create your own AppImage. If you have questions you can ask me, although I am not an expert on this and as such I frequently ask "the master" (my term, not his, rofl) for help on GitHub. The master, in this case, is [Simon Peter](https://github.com/probonopd) (@probonopd on GitHub), the person that created the AppImage package format.

The objective when building an AppImage is to create a directory, called an AppDir (usually with the name `<APPNAME>.AppDir` where `<APPNAME>` is the name of the application you are creating an AppImage for) with the following structure:

~~~bash
<FS>
AppRun
<APPNAME>.desktop
<APPNAME>.png
~~~

Where `<FS>` is the AppImage's copy of the application's file system. See every app installed via one's package manager has a set of system directories that contain its files. In the case of AppImages this file system also includes extra file libraries and executables to ensure the program will work on whichever system it finds itself. Here is an example `<FS>` for the Code::Blocks AppImage:

~~~bash
etc/
  - deluser.conf
  - init.d/
    - x11-common
  - magic
  - magic.mime
  - X11/
    - app-defaults/
      - KOI8RXTerm
      - KOI8RXTerm-color
      - UXTerm
      - UXTerm-color
      - XTerm
      - XTerm-color
    - rgb.txt
    - Xreset
    - Xreset.d/
      - README
    - Xresources/
      - x11-common
    - Xsession
    - Xsession.d/
      - 20x11-common_process-args
      - 30x11-common_xresources
      - 35x11-common_xhost-local
      - 40x11-common_xsessionrc
      - 50x11-common_determine-startup  
      - 60x11-common_localhost
      - 60x11-common_xdg_path
      - 90x11-common_ssh-agent
      - 99x11-common_start
    - Xsession.options
lib/
  - x86_64-linux-gnu/
    - libexpat.so.1
    - libexpat.so.1.5.2
    - libncurses.so.5
    - libncurses.so.5.9
    - libpng12.so.0
    - libpng12.so.0.46.0
    - libtinfo.so.5
    - libtinfo.so.5.9
    - libuuid.so.1
    - libuuid.so.1.3.0
    - libz.so.1
    - libz.so.1.2.3.4
usr/
  - bin/
    - addr2line
    - ar
    - as
    - cb_console_runner
    - cb_share_config
    - c++filt
    - codeblocks
    - codeblocks.wrapper
    - elfedit
    - file
    - gold
    - gprof
    - koi8rxterm
    - ld
    - ld.bfd
    - ld.gold
    - lxterm
    - nm
    - objcopy
    - objdump
    - perl
    - perl5.14.2
    - ranlib
    - readelf
    - resize
    - size
    - strings
    - strip
    - uxterm
    - X11
    - xsterm
  - 
~~~
