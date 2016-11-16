## Background
The objective when building an AppImage is to create a directory, called an AppDir (usually with the folder name `<APPNAME>.AppDir` where `<APPNAME>` is the name of the application you are creating an AppImage for) with the following structure:

~~~bash
<FS>
AppRun
<APPNAME>.desktop
<APPNAME>.{png,svg,xpm,jpg}
~~~

The final file `<APPNAME>.{png,svg,xpm,jpg}` is whatever image file (in PNG, SVG, XPM, JPG formats, just to name a few possible formats) for the app that is referenced in the desktop configuration file. `<FS>` is the AppImage's copy of the application's file system. See every app installed via one's package manager has a set of system directories that contain its files. In the case of AppImages this file system also includes extra file libraries and executables to ensure the program will work on whichever system it finds itself. [Here](https://gist.github.com/972ee179cefb92e32c2334cd8eae68ff) is an example `<FS>` for the Code::Blocks AppImage, I provided a link to it instead of including it in this post because it is simply too large to fit in this post.

Usually `<FS>` is created by downloading Debian or RPM packages for a package providing `<APPNAME>` and all of its dependencies for a **target distribution** and extracting their contents (usually if Debian packages are used they are extracted using the `dpkg-deb -x` command) to the AppDir. See these packages contain the files they provide in the location they are installed on your live system. For example, if you downloaded a Code::Blocks Debian package and extracted its contents to a local directory (say for argument's sake `/home/fusion809`) then you would expect to see an executable file at /home/fusion809/usr/bin/codeblocks, as when that Code::Blocks Debian package is installed it installs an executable file to `/usr/bin/codeblocks` on your file system. The target distribution ideally should be an old (especially with regard to the age of the software in its official repositories), yet still supported distribution. As an AppImage will only work on distributions of the same age or newer than the target distribution used to build the AppImage. So if you build an AppImage using packages from CentOS 7 you should not expect it to run on CentOS 6, as CentOS 6 is *older* than the target distribution, CentOS 7.

Reasonable choices for a target distribution include:
* CentOS 5/6 or if you are desperate 7 could be used
* Debian 7/8, although an older system would be preferable to Debian 8
* Mageia 4/5
* openSUSE 13.2
* Ubuntu 12.04/14.04

After a suitable AppDir has been created, one merely needs to run the command [`appimagetool`](https://github.com/probonopd/AppImageKit) on the AppDir.
