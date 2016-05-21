---
layout:    page2
title:     Visual Studio Code Installer
permalink: /vscode-installer/
date:      2016-05-25 +1000
---

[**Visual Studio Code**](http://code.visualstudio.com) (**VSCode**) is a free and open-source text editor developed by Microsoft. It is built on the Electron framework that was originally developed for use by GitHub's Atom text editor, and is written in CSS, JavaScript and TypeScript. While its source code is released under the MIT License, official Linux binary packages for it (including Debian, RPM and zip archives) are licensed under a proprietary End-User License Agreement (EULA). These binaries are the safest and fastest way to install VSCode on Linux, but those that want to use an open-source version of VSCode are left to build VSCode from source code. This process can be daunting for those that are not used to compiling VSCode.

In order to make the process of installing VSCode easier on Linux I created an automated shell script installer for it, [`vscode-installer`](https://github.com/fusion809/vscode-installer). This page describes the technical details of this installer. The main script of it is `installer.sh`, which is usually invoked by the `quick-install.sh` script. The `quick-install.sh` script downloads the `vscode-installer` repository and then executes the main `installer.sh` script. → ↦ ↛

<pre class="diagram">
                               &#9484;──> lib/arch.sh
                               &#9484;──> lib/dest.sh
                               &#9484;──> lib/install.sh
                               &#9484;──> lib/method.sh
                               &#9484;──> lib/src_build.sh
                               &#9484;──> lib/src_method.sh
                               &#9484;──> lib/test.sh
quick-install.sh ─> installer.sh ─> lib/version.sh
                               └──> lib ─┐
                                         ├──┤ [[ Arch | Manjaro ]]   ─> build/aur.sh
                                         ├──┤ [[ CentOS ]]           ─> build/centos.sh
                                         ├──┤ [[ Debian ]]           ─> build/debian.sh
                                         ├──┤ [[ Fedora ]]           ─> build/fedora.sh
                                         ├──┤ [[ Mageia ]]           ─> build/mageia.sh
                                         ├──┤ [[ openSUSE ]]         ─> build/opensuse.sh
                                         ├──┤ [[ PCLinuxOS ]]        ─> build/pclinuxos.sh
                                         ├──┤ [[ Sabayon ]]          ─> build/sabayon.sh
                                         ├──┤ [[ Ubuntu | Zorin OS]] ─> build/ubuntu.sh
                                         └──> [[ other ]]            ─> other.sh
</pre>

<script>
  var diagram = flowchart.parse("the code definition");
  diagram.drawSVG('diagram');

  // you can also try to pass options:

  diagram.drawSVG('diagram', {
                              'x': 0,
                              'y': 0,
                              'line-width': 3,
                              'line-length': 50,
                              'text-margin': 10,
                              'font-size': 14,
                              'font-color': 'black',
                              'line-color': 'black',
                              'element-color': 'black',
                              'fill': 'white',
                              'yes-text': 'yes',
                              'no-text': 'no',
                              'arrow-end': 'block',
                              'scale': 1,
                              // style symbol types
                              'symbols': {
                                'start': {
                                  'font-color': 'red',
                                  'element-color': 'green',
                                  'fill': 'yellow'
                                },
                                'end':{
                                  'class': 'end-element'
                                }
                              },
                              // even flowstate support ;-)
                              'flowstate' : {
                                'past' : { 'fill' : '#CCCCCC', 'font-size' : 12},
                                'current' : {'fill' : 'yellow', 'font-color' : 'red', 'font-weight' : 'bold'},
                                'future' : { 'fill' : '#FFFF99'},
                                'request' : { 'fill' : 'blue'},
                                'invalid': {'fill' : '#444444'},
                                'approved' : { 'fill' : '#58C4A3', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
                                'rejected' : { 'fill' : '#C45879', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }
                              }
                            })
</script>
<div id="diagram"></div>
