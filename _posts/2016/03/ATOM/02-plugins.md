## Atom Plugins
As previously mentioned Atom's capabilities and appearance are usually modified or extended by use of **packages** and **themes**, respectively. Henceforth, to save some space, I will refer to packages and themes, collectively, as **plugins**. Some of Atom's plugins even come bundled, or pre-installed, with Atom, while the rest are installed using Atom's own package manager, `apm`, which is sort of like a modified version of Node's `npm` package manager. Using packages it is possible for you to:

* Use an embedded terminal in Atom[^7]
* Run git commands without a terminal in Atom[^8]
* Compile source code[^9]
* Run script files[^10]
* Preview markup files (like those written in markdown)
* Preview colours described by hexadecimals, RGB combinations and alike in Less or CSS style sheets[^11]
* Quickly synchronize the Atom plugins you have installed on two or more different machines.[^12]

At the time of writing this post there were 3,866 packages and 1,161 themes for Atom available from [https://atom.io/packages](https://atom.io/packages/) and [https://atom.io/themes](https://atom.io/themes), respectively. These plugins are those that have already been built by the community, or by the Atom developers themselves, but everyone is completely free to develop their own plugins for Atom. Unfortunately, some of these plugins will be for older versions of Atom and may not be compatible with the latest releases.

{% include Links/image.html image="Atom/pigments-versions-tab.png" width="full" float="none" description="This is how one checks out the available versions of a package at https://atom.io/packages. Click the &ldquo;Versions&rdquo; tab circled in red" %}

What I do to check whether a package or theme is likely to work with the current version of Atom is I check out when the latest release of the package or theme was made. If it was within the last month it is a fair bet it will be compatible with the current version of Atom, if not, but it was updated within the past six months, then there's a chance it might work with the latest release of Atom, but I would not hold out too much hope that it will work exactly as it should. If it was last updated prior to the release of Atom 1.0 (25 June 2015) I would not even bother trying it unless I have a burning desire to use its functionalities. Unfortunately, Atom's [packages](https://atom.io/packages) and [themes](https://atom.io/themes) repositories' search engine (that is, how you search for the package/theme you want in the web browser of your choice) is very basic, so I cannot exclude packages that have not been updated within the past six months. Rather I have to look for plugins and then when I find one I think I will like, I have to go to its description page and press on the "Versions" tab to see when the latest release of this plugin was. It is very disappointing to find that a package I would really like has not been updated since the release of Atom 1.0 in June 2015.
