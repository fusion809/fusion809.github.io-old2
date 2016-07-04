---
date:      2016-07-05 +1000
layout:    page
title:     "The arch-atom (or atom-bleeding) GitHub Repository"
permalink: /arch-atom/
---

My `arch-atom` GitHub repository is a fork of [Nicola Squartini](https://github.com/tensor5)'s (or tensor5) repository of the same name. The main difference is that mine is more minimalistic and bleeding-edge. My `atom-bleeding` package is designed to **not** conflict with tensor5's `atom` package. `atom-bleeding` contains the bare minimum core packages that I believe are necessary for the build to work. The other core packages should be installed manually. Alternatively you can use some shell scripts I have written to do this. To install just the core packages / my improvements thereof run:

```bash
/bin/bash -c "$(curl -sL https://git.io/vKvnV)"
```

while to install all packages I would recommend run:

```bash
/bin/bash -c "$(curl -sL https://git.io/vKvn1)"
```

I would recommend installing Electron from tensor5's user repository, `[atom]`, if you are operating on a 64-bit system, as building it from source will take > 2 hours. 
