As a Linux user I have found it a real challenge to find free games that I like, that can be run on Linux, without the use of [Wine](https://www.winehq.org/) or virtualization.{% include_relative fn-inline.html no="1" %} Most Linux games are second-class or worse, compared to the corresponding Windows or even macOS games. This is not surprising given that most high-quality games are proprietary games and macOS and Windows are the most attractive operating systems to package for, from the point-of-view of proprietary software developers. This is because their market share on the desktop and laptop are far higher than that of Linux (most estimates place Linux's usage share at 1% while macOS has a market share of 10-20% and Windows of >80%), plus given macOS and Windows are proprietary operating systems usually their users are more willing to use proprietary and even paid software. Another reason for why most Linux games are second-class or worse is that most Linux-compatible games are developed as side-projects by hobbyists and not professional game developers. I intend on mentioning a wide variety of free games, including those I dislike and even those I have not really used all that much (or even at all). If you feel you have a better write up for a game covered here, or you feel I missed one, feel free to create a pull request into this post. To do so merely fork [fusion809.github.io](https://github.com/fusion809/fusion809.github.io) and edit it.

There are over a thousand games available for Linux in all, so in here I will only be covering free games of particular interest to myself (and hopefully the majority of Linux gamers). 

### Side note
To check how many Linux games there were available on Gentoo Linux, on 14 April 2017, I ran the command:

{% include Code/codeu.html line1='emerge -s "%@^games" | grep "*" | cut -d "/" -f 2 | cut -d "[" -f 1 | sort -u' %}

with the following extra (on top of the Portage tree, of course) overlays enabled:

* [`flatpak-overlay`](https://github.com/fosero/flatpak-overlay)
* [`fusion809-overlay`](https://github.com/fusion809/fusion809-overlay)
* [`gamerlay`](https://github.com/gentoo-mirror/gamerlay)
* [`games-overlay`](https://github.com/hasufell/games-overlay)
* [`grub2-themes`](https://github.com/gentoo/grub2-themes-overlay)
* [`steam-overlay`](https://github.com/anyc/steam-overlay)

and it returned: [this list](https://github.com/fusion809/fusion809.github.io/blob/master/_drafts/2017-GAMES/games-list-gentoo.txt) which is over 1,100 lines long, which corresponds to over 1,100 separate games! Beware, however, that as said in the ["*A Comparison of Major Free Operating Systems*"](/comparison-major-free-operating-systems/) post the Portage tree and these extra overlays are riddled with proprietary and even paid software so not all these games will be free. 
