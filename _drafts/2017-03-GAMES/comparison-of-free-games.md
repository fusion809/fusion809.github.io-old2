---
date:             2017-03-27 +1000
layout:           post
last_modified_at: 2017-03-27 04:11:22 +1000
title:            "An Overview of Free Games Available for Linux"
redirect_from:    /free-games/
permalink:        /free-linux-games/
categories:       free, games, overviews
---

As a Linux user I have found it a real challenge to find games that I like. Most Linux games are second-class or worse, compared to the corresponding Windows or even macOS games. This is not surprising given that most high-quality games are proprietary games and macOS and Windows are the most attractive to proprietary software developers. This is because their market share on the desktop and laptop are far higher than that of Linux (most estimates place Linux's usage share at 1% while macOS has a market share of 10-20% and Windows of >80%), plus given macOS and Windows are proprietary operating systems usually their users are more willing to use proprietary and even paid software. Another reason for why most Linux games are second-class or worse is that most Linux-compatible games are developed as side-projects by hobbyists and not professional game developers. I intend on mentioning a wide variety of free games, including those I dislike and even those I have not really used all that much (or even at all). If you feel you have a better write up for a game covered here, or you feel I missed one, feel free to create a pull request into this post. To do so merely fork [fusion809.github.io](https://github.com/fusion809/fusion809.github.io) and edit it.

## Criteria
My preferred games are those that meet the following criteria:

(1) Are free, that is, free of monetary charge. Being open-source is an added bonus, but not strictly necessary to make me happy. Open-source games mainly have the advantage of being easier to port to distributions other than those the original developers packaged the game for. An example of such a situation is RuneScape's NXT Client. When RuneScape's only official client was its Java client the closed-source nature of this game was no big drama as its Java nature made it easily portable to any Java-capable platform. The NXT Client (which is written in C++) is what makes the closed-source nature of RuneScape more annoying. See the NXT Client is only officially packaged for one platform: 64-bit Ubuntu 14.04. Packages for other 64-bit Linux distributions (including Arch Linux, Gentoo Linux, PCLinuxOS, etc) have all been built from this original package. 64-bit Ubuntu 14.04, I would argue, is probably a popular, but not majority Linux distribution (and to be clear I am including all 64-bit distributions derived that use Ubuntu 14.04 as their base) in the Linux world as most of its former users will have upgraded to the latest LTS Ubuntu release, Ubuntu 16.04. The reason why 64-bit Ubuntu 14.04 is the only officially-supported Linux distribution is probably because most Linux users use Ubuntu, or a Ubuntu-derived distribution (e.g., Linux Mint or Zorin OS) and at the time the NXT Client was originally rolled out Ubuntu 14.04 was the latest Long-Term Support (LTS) release of Ubuntu. Now the closed-source nature of RuneScape is a problem in the sense that on 64-bit Linux distributions other than Ubuntu 14.04 (including Ubuntu 16.04, by-the-way!) a common issue I have encountered with the NXT Client is that the game crashes at start-up giving an error message such as:

~~~
The program 'runescape' received an X Window System error.
This probably reflects a bug in the program.
The error was 'BadMatch (invalid parameter attributes)'.
  (Details: serial 63000 error_code 8 request_code 42 minor_code 0)
  (Note to programmers: normally, X errors are reported asynchronously;
   that is, you will receive the error a while after causing it.
   To debug your program, run it with the --sync command line
   option to change this behavior. You can then get a meaningful
   backtrace from your debugger if you break on the gdk_x_error() function.)
~~~

So far I have not found a single fix or workaround to this error besides switching to the legacy Java client of RuneScape. This Java client is set to be phased out (although an exact date for when it will no longer be usable to play RuneScape has not been publicly announced) too, which adds to the irritation this error causes myself and other RuneScape users operating on Linux. I suspect if we had access to the NXT Client's source code we could probably come up with a better fix to this error. Further details on this error, for those that are interested or think they have a fix, can be found on the [Funtoo Linux bug tracker](https://bugs.funtoo.org/browse/FL-3678).

(2) Are easy to get and run without any major issues on all my favourite Linux distributions. I usually stick to the following distributions for gaming: Arch Linux, Fedora, Funtoo Linux, Gentoo Linux, Manjaro Linux, openSUSE Tumbleweed, Sabayon Linux and Ubuntu. Due to the diversity in my preferred set of distributions it is a fair bet than any game that runs on all of these distributions will likely run on any major distribution. The Steam platform may aid in this if the game is present in their game store, although I have had issues getting Steam to run on Ubuntu 14.04 LTS, for example. Java games are good for this, in theory, but they usually have difficulty fulfilling criterion 4. 

(3) Appeal to my personal taste in games. I like combat-oriented real-time strategy games that are not turn-based, wherein I can pick the difficulty (as to-be-honest I am pretty poor at these games, so if they are too challenging and I cannot adjust their difficulty, I will likely get bored with them), as well as selected role-playing games such as RuneScape, selected board and card games (like Chess), as well as certain arcade/racing games (e.g., SuperTuxKart). Strategy games I like are often similar to the following proprietary Windows games: [Age of Empires III](https://en.wikipedia.org/wiki/Age_of_Empires_III) (AoE 3) and [Outlive](https://en.wikipedia.org/wiki/Outlive), both of which I played before I made my switch to Linux in mid 2012.

(4) High-definition games (that is, those with great graphics like 0 A.D. and RuneScape's NXT Client), but I have learnt to be happy with even lower-definition games like OpenRA, as there are only select few high-definition games that will run on Linux. Java games are rarely high-definition, so while they may fulfil criterion 2 they seldom fulfil this criterion.
