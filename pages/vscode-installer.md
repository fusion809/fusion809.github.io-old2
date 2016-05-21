---
layout:    page2
title:     Visual Studio Code Installer
permalink: /vscode-installer/
date:      2016-05-25 +1000
---

[**Visual Studio Code**](http://code.visualstudio.com) (**VSCode**) is a free and open-source text editor developed by Microsoft. It is built on the Electron framework that was originally developed for use by GitHub's Atom text editor, and is written in CSS, JavaScript and TypeScript. While its source code is released under the MIT License, official Linux binary packages for it (including Debian, RPM and zip archives) are licensed under a proprietary End-User License Agreement (EULA). These binaries are the safest and fastest way to install VSCode on Linux, but those that want to use an open-source version of VSCode are left to build VSCode from source code. This process can be daunting for those that are not used to compiling VSCode.

In order to make the process of installing VSCode easier on Linux I created an automated shell script installer for it, [`vscode-installer`](https://github.com/fusion809/vscode-installer). This page describes the technical details of this installer. The main script of it is `installer.sh`, which is usually invoked by the `quick-install.sh` script. The `quick-install.sh` script downloads the `vscode-installer` repository and then executes the main `installer.sh` script. → ↦ ↛

<div class="diagram">
                                    ┌──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/arch.sh" link="_blank">lib/arch.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/dest.sh" link="_blank">lib/dest.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/install.sh" link="_blank">lib/install.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/method.sh" link="_blank">lib/method.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/src_build.sh" link="_blank">lib/src_build.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/src_method.sh" link="_blank">lib/src_method.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/test.sh" link="_blank">lib/test.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/version.sh" link="_blank">lib/version.sh</a>
                                    ├──> <a href="https://github.com/fusion809/vscode-installer/tree/master/lib" link="_blank">lib</a> ─────────────────┐
                                    |                         ├──┤ [[ Arch | Manjaro ]]    ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/aur.sh" link="_blank">build/aur.sh</a>       ─> Builds VSCode from the AUR (if binary build is selected) or
                                    |                                                                               my PKGBUILDs GitHub repo (if source build is selected).
                                    |                         ├──┤ [[ CentOS ]]            ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/centos.sh" link="_blank">build/centos.sh</a>    ─>
                                    |                         ├──┤ [[ Debian ]]            ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/debian.sh" link="_blank">build/debian.sh</a>    ─>
                                    |                         ├──┤ [[ Fedora ]]            ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/fedora.sh" link="_blank">build/fedora.sh</a>    ─>
                                    |                         ├──┤ [[ Mageia ]]            ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/mageia.sh" link="_blank">build/mageia.sh</a>    ─>
<a href="https://github.com/fusion809/vscode-installer/blob/master/quick-install.sh" link="_blank">quick-install.sh</a> ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/installer.sh" link="_blank">installer.sh</a> ─> |                         ├──┤ [[ openSUSE ]]          ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/opensuse.sh" link="_blank">build/opensuse.sh</a>  ─>
                                    |                         ├──┤ [[ PCLinuxOS ]]         ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/pclinuxos.sh" link="_blank">build/pclinuxos.sh</a> ─>
                                    |                         ├──┤ [[ Sabayon ]]           ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/sabayon.sh" link="_blank">build/sabayon.sh</a>   ─>
                                    |                         ├──┤ [[ Ubuntu | Zorin OS ]] ─> <a href="https://github.com/fusion809/vscode-installer/blob/master/lib/build/ubuntu.sh" link="_blank">build/ubuntu.sh</a>    ─>
                                    |                         └──┤ [[ other ]]             ─> other.sh           ─>
                                    |
                                    ├──┤ [[ i686 | x86_64 ]] ─┐
                                    |                         ├──┤ [[ Arch | Manjaro ]]    ─> arch.sh
                                    |                         ├──┤ [[ CentOS ]]            ─> centos.sh
                                    |                         ├──┤ [[ Debian ]]            ─> debian.sh
                                    |                         ├──┤ [[ Fedora ]]            ─> fedora.sh
                                    |                         ├──┤ [[ Mageia ]]            ─> mageia.sh
                                    |                         ├──┤ [[ openSUSE ]]          ─> opensuse.sh
                                    |                         ├──┤ [[ PCLinuxOS ]]         ─> pclinuxos.sh
                                    |                         ├──┤ [[ Sabayon ]]           ─> sabayon.sh
                                    |                         ├──┤ [[ Ubuntu | Zorin OS ]] ─> ubuntu.sh
</div>
