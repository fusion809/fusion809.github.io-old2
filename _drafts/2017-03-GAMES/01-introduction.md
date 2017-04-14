As a Linux user I have found it a real challenge to find games that I like. Most Linux games are second-class or worse, compared to the corresponding Windows or even macOS games. This is not surprising given that most high-quality games are proprietary games and macOS and Windows are the most attractive operating systems to package for, to proprietary software developers. This is because their market share on the desktop and laptop are far higher than that of Linux (most estimates place Linux's usage share at 1% while macOS has a market share of 10-20% and Windows of >80%), plus given macOS and Windows are proprietary operating systems usually their users are more willing to use proprietary and even paid software. Another reason for why most Linux games are second-class or worse is that most Linux-compatible games are developed as side-projects by hobbyists and not professional game developers. I intend on mentioning a wide variety of free games, including those I dislike and even those I have not really used all that much (or even at all). If you feel you have a better write up for a game covered here, or you feel I missed one, feel free to create a pull request into this post. To do so merely fork [fusion809.github.io](https://github.com/fusion809/fusion809.github.io) and edit it. 

There are over a thousand games available for Linux in all, so in here I will only be covering free games of particular interest to myself (and hopefully others). As a side note to check how many Linux games there were available on Gentoo Linux, on 14 April 2017, I ran the command:

{% include Code/codeu.html line1='emerge -s "%@^games" | grep "*" | cut -d "/" -f 2 | cut -d "[" -f 1 | sort -u' %}

with the following extra (on top of the Portage tree, of course) overlays enabled:

* [`flatpak-overlay`](https://github.com/fosero/flatpak-overlay)
* [`fusion809-overlay`](https://github.com/fusion809/fusion809-overlay)
* [`gamerlay`](https://github.com/gentoo-mirror/gamerlay)
* [`games-overlay`](https://github.com/hasufell/games-overlay)
* [`grub2-themes`](https://github.com/gentoo/grub2-themes-overlay)
* [`steam-overlay`](https://github.com/anyc/steam-overlay)

and it returned: 
