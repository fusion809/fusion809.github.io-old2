## Vim
{% include Links/image.html image="gVim-7.4.827-running-under-Moksha.png" description="gVim 7.4.827 running under Moksha" width="1130px" float="none" %}

### Background
{% include_relative TE/links.md program="Vim" package="app-editors/vim" link="http://www.vim.org/" pacman="extra/x86_64/vim" gw="Vim" wp="Vim" aw="Vim" hr="https://bitbucket.org/vim-mirror/vim" %} (short for **Vi**-<b>IM</b>proved) is a text editor that was first released in 1991 by Bram Moolenaar, as a clone of Bill Joy's Vi text editor. It and GNU Emacs are seen as the most powerful free text editors available for experienced programmers. Vim is available as a command-line text editor (which is its default and is invoked by running the `vim` command), where users can edit text files from the command-line, or as a graphical text editor (which is called **gVim**). There is also a Qt-based GUI for Vim called Vim-Qt that is available via the Entropy Store for Sabayon users, although unfortunately it does not seem to available for Manjaro users via the usual methods. Compared to most text editors, Vim is far less intuitive and has a steep learning curve. For one, its keyboard shortcuts are far from conventional, with <kbd>Ctrl</kbd>+<kbd>C</kbd> for copy, <kbd>Ctrl</kbd>+<kbd>V</kbd> for paste, *etc.* not being available. Vim also has its own scripting language (Vim script) for adding functionalities to it.

### Customizability
Vim is extensively customizable, for people with the required level of finesse in programming. There are also several extensions and other plugins available for it, from the Internet.

### Features
It has syntax-highlighting support for almost (if not every) every computer language. It also has several IDE-type features, like compiling source code from within it. Several other features can be added to it, for example, I wrote some of this post in Vim when my blog was powered by WordPress, using the [Vimpress plugin](https://github.com/PotHix/Vimpress). Several plugins are available in the [app-vim](http://gpo.zugaina.org/app-vim/) Portage category.

### Obtaining It
#### Manjaro
It is easy to install Vim on Manjaro using pacman. To do this run:
{% include Code/coder.html line1="pacman -S vim" %}
if you want to be able to use the graphical user interface of Vim too run:
{% include Code/coder.html line1="pacman -S gvim" %}
instead. The Vim and gVim packages **cannot** be installed simultaneously on the same machine. The gVim package, not only provides the graphical user interface, but it also provides the `vim` command for the command-line.

#### Sabayon
It is easy to obtain Vim and gVim on Sabayon using Entropy or Portage. To install Vim and gVim using Entropy, run:
{% include Code/coder.html line1="equo i -av app-editors/vim app-editors/gvim" %}
whereas to install it with Portage run:
{% include Code/coder.html line1="emerge -av app-editors/vim app-editors/gvim" %}

### Advantages (Pros)
* Easy to obtain it on Manjaro, Sabayon and virtually every &#42;nix system.
* Extremely customizable
* Fairly light on system resources

### Disadvantages (Cons)
* Steep learning curve, making it difficult to learn. If you run `vimtutor` from the command-line after installing it, you will be taken through a tutorial of how to use it, which can be helpful.

### Summary
{% include_relative TE/vim-summary.html %}
