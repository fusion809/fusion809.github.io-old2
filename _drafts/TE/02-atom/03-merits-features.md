### Features and Merits

#### General
Atom's **general merits** include:

* In-built **embedded file/directory browser** called tree view and provided by the {% include Atom/apm.md package="tree-view" %} package.
* In-built support for **running git commands** in Atom, using the {% include Atom/apm.md package="git-plus" %} package.
* In-built **syntax-highlighting**, **auto-indentation**, **auto-completion**, **snippets**, *etc.* support for the majority of markup, programming and style sheet languages.

Additional **general-purpose features** that Atom can gain by the installation of extra packages include (in brackets are the package(s) that provide this feature):

* Insertion of an **embedded terminal emulator** into Atom {% include Atom/apm.md package="terminal-plus" puncl="(" puncr=")." %}
* Searching through **past git commits** in a repository {% include Atom/apm.md package="git-time-machine" puncl="(" puncr=")." %}
* **Running hg commands** in Atom, using the {% include Atom/apm.md package="atom-hg" %} package.

#### Blog Writing
For the purpose of blog writing Atom has the following helpful features:

* It has in-built syntax-highlighting, previewing and snippeting support for GitHub-flavoured markdown (GFM). It also has in-built syntax-highlighting, auto-indentation and snippet support for HTML and, with the help of a plugin {% include Atom/apm.md package="atom-html-preview" puncl="(" puncr=")," %} it is also possible to preview HTML files in Atom. Syntax-highlighting, previewing and snippet support is also obtainable, using plugins, for asciidoc and textile.
* It can apply language-specific syntax highlighting to pieces of code (belonging to separate, non-markdown languages like YAML for front-matter) within markdown documents. If you insert a code block (denoted by triple ticks (<code>&#96;</code>) or tildes (`~`) at the start and end of the block, with the name of the computer language enclosed by the block after the first triple of ticks/tildes) Atom will highlight the code enclosed according to its respective computer language.
* The in-built git support and embedded terminal mentioned earlier can be handy for those writing blogs hosted by GitHub and other sites using the git version control system. The embedded terminal can also be handy for those using static site generators (SSGs) that need to be re-generated manually before you make any git commits (e.g., Hexo).
* One can also run certain SSGs from within Atom itself without using the embedded terminal, using plugins. For example, for Jekyll there is a plugin called {% include Atom/apm.md package="jekyll" %} that can be used to run the Jekyll server.
* Keyboard shortcuts for bolding and italicizing text, inserting code blocks, *etc.* in markdown. This capability is provided by the {% include Atom/apm.md package="markdown-writer" %} package.

#### Programming
Atom has several optional plugins that can be used to turn Atom into an efficient IDE for a variety of different programming languages. These plugins include:

* {% include Atom/apm.md package="build" %} &mdash; a plugin to automate the process of building projects in Atom. It has a support for most major compiled  programming languages, for a list of such languages see [here](https://atombuild.github.io/). Projects written in other compiled languages can likely be built via the use of other more language-specific packages, like {% include Atom/apm.md package="builder-go" %} for Go.
* {% include Atom/apm.md package="nuclide" %} &mdash; a plugin developed by Facebook that adds features mentioned in greater detail [here](http://nuclide.io/docs/quick-start/getting-started/). These features include debugging, test running, problem diagnosing, difference viewing,
*etc.* primarily for the Hack and PHP programming languages. It also includes in-built support for Mercurial versioning control. I personally would not recommend it as for me it makes Atom either incredibly laggy or prone to crashes.
* {% include Atom/apm.md package="platformio-ide" %} &mdash; a plugin to turn Atom into a more efficient IDE for IoT. It includes, &ldquo;intelligent code completions&rdquo; for C/C++, along with debugging, building and version control features typical of most IDEs. It also makes Atom slower, but it does not slow it down quite as much as `nuclide`.
