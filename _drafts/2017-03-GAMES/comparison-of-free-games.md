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

Oddly the solution is to merely delete the `~/.runescape` file. 

(2) Are easy to get and run without any major issues on all my favourite Linux distributions. I usually stick to the following distributions for gaming: Arch Linux, Fedora, Funtoo Linux, Gentoo Linux, Manjaro Linux, openSUSE Tumbleweed, Sabayon Linux and Ubuntu. Due to the diversity in my preferred set of distributions it is a fair bet than any game that runs on all of these distributions will likely run on any major distribution. The Steam platform may aid in this if the game is present in their game store, although I have had issues getting Steam to run on Ubuntu 14.04 LTS, for example. Java games are good for this, in theory, but they usually have difficulty fulfilling criterion 4. 

(3) Appeal to my personal taste in games. I like combat-oriented real-time strategy games that are not turn-based, wherein I can pick the difficulty (as to-be-honest I am pretty poor at these games, so if they are too challenging and I cannot adjust their difficulty, I will likely get bored with them), as well as selected role-playing games such as RuneScape, selected board and card games (like Chess), as well as certain arcade/racing games (e.g., SuperTuxKart). Strategy games I like are often similar to the following proprietary Windows games: [Age of Empires III](https://en.wikipedia.org/wiki/Age_of_Empires_III) (AoE 3) and [Outlive](https://en.wikipedia.org/wiki/Outlive), both of which I played before I made my switch to Linux in mid 2012.

(4) High-definition games (that is, those with great graphics like 0 A.D. and RuneScape's NXT Client), but I have learnt to be happy with even lower-definition games like OpenRA, as there are only select few high-definition games that will run on Linux. Java games are rarely high-definition, so while they may fulfil criterion 2 they seldom fulfil this criterion.

(5) High-quality documentation (e.g., *The RuneScape Wiki* for RuneScape), especially if the game is not especially intuitive.

## 0 A.D.
{% include Layouts/games-infobox.html width="400px" game="0 A.D." logo="0_A.D..png" screenshot="0_A.D._a21.png" screenshot_caption='Screenshot of 0 A.D. alpha 21, codename "Ulysses"' screenshot_width="400px" date="2001<sup><a href='#fn:1' class='footnote'>1</a></sup>" basis="Age of Empires II: The Age of Kings" developers="Wildfire Games" development="alpha" license="GPLv2, MIT, MPL 2.0, <i>etc.</i><sup><a href='#fn:2' class='footnote'>2</a></sup>" genre="Real-time strategy" development="Alpha" language="C++" %}

**0 A.D.** is a free and open-source, historic real-time strategy (RTS) game. In it, the player is the leader of an ancient civilization and they must defeat their opponents by amassing a sufficiently large military force. Its name is a deliberate misnomer, as the year 0 A.D. never existed, rather 1 B.C. was the year directly before 1 A.D. The ancient civilizations that can be lead in 0 A.D. were those present between the time periods of 500 B.C. and 500 A.D. It can be played as a single player, or one can play against other players. 

It utilizes its very own Pyrogenesis game engine; both 0 A.D. and the Pyrogenesis game engine are written in C++. Its graphics are perhaps the best of any open-source Linux-compatible game I have ever seen. In fact, its graphics rival that of many proprietary games like Age of Empires III and RuneScape. 0 A.D. is developed by Wildfire Games, an international team of volunteer developers. Wildfire Games is funded by Software in the Public Interest, Inc. (SPI), a U.S. non-profit organization that also funds several other open-source software projects including Arch Linux, Debian and LibreOffice.{% include_relative fn-inline.html no="3" %}

{% include_relative footnotes.html %}
