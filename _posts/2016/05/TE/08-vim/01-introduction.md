
## Vim
{% include Links/image.html image="Vim/gVim-7.4.1825.png" float="none" width="100%" description="gVim 7.4.1825 GTK+ 2 interface." %}

**Vim** (short for **Vi iMproved**) is a free and incredibly extensible text editor that can be run from both the command-line and as a graphical editor called gVim. It is based on the original Vi UNIX text editor developed by Bill Joy in the mid 1970s, with several extra features built into it, such as syntax-highlighting support. Vim was first publically released in 1991 and is developed by Dutch programmer, Bram Moolenar. Presently the source code of Vim is hosted by [GitHub](https://github.com/vim/vim). Its graphical version, gVim is built on Linux using the GTK+ toolkit, one can pass configure flags before its build to set which version of GTK+ (that is, GTK+ 2 vs. GTK+ 3) is used to build the graphical interface of the editor. It is licensed under its own charityware license that while free and open-source encourages users to give money to orphans in Uganda. Vim is written in C and its own programming language, through which the editor can also be extended, Vim script (VimL).

Vim's chief advantage is that it is fairly lightweight, using fairly minimal hard disk space/RAM and having a negligible start-up time, especially when used from the command-line. It is also very cross-platform and can run on embedded systems, through SSH, and in several other situations wherein other editors seldom venture. Likewise Vim is very stable and I have never myself noticed any bugs in it not related to plugins I have installed.

Vim is a **modal editor**, which serves as both a blessing and a curse, depending on whom you ask. The term *modal editor* refers to the fact that Vim has two main modes: *insert* mode and *normal* mode. As you may guess you use insert mode to insert text and do most of your general editing. Normal mode, on the other hand, is the default mode (that is, the mode you Vim starts with) and is the one you use to perform several functions in Vim using your keyboard. Its modality is what makes Vim such a challenging editor to learn, but also a powerful editor once you have learnt its ways. If you have no prior experience with modal editors when you first start using Vim, you are in for quite the learning curve. I would recommend starting out with gVim, because at least with gVim you can use the drop-down menus to guide you on how to use it when you start off. After this I recommend running `vimtutor` as it will teach you the ropes, as it were of Vim. 