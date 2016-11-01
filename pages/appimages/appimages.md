---
layout:           page
date:             2016-11-01 +1000
title:            "AppImages: the Linux packaging format of the future"
permalink:        /appimages/
last_modified_at: 2016-11-01 11:03 +1000
---

[**AppImages**](http://appimage.org/) are a type of *cross-distribution packaging format* (CDPF), that are not installed and need no special tools to be run. They contain all the libraries, binaries, desktop configuration files and icons that the application provided by the AppImage requires. In essence they are self-mounting disk image files, that run the application contained within them. They are most similar to the disk image package format (file extension: `.dmg`) of macOS. All that is required to run is them is for them to be made executable (using `chmod +x <AppImage>`) and run (with `./<AppImage>`). I personally have not contributed to the development of the AppImage package format itself (as I am not competent enough a programmer, to be honest), but I have collaborated with the developer of the AppImage format, Simon Peter (or [@probonopd](https://github.com/probonopd) as he is known as on GitHub) on creating AppImages for popular Linux apps like Code::Blocks, NetBeans and SuperTux.

## Available AppImages
{% include Layouts/note.md note1="If you notice an open-source Linux app missing from this list, that you would like to see provided as an AppImage, please request it from the upstream developers." %}

{% include_relative table1.html %}

## See Also
* [probonopd's AppImages Bintray Repository](https://bintray.com/probono/AppImages/)
