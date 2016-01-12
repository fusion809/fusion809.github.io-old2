## Code::Blocks
{% include image.html image="Code::Blocks-13.12.png" width="1130px" float="none" description="Code::Blocks 13.12 running under Manjaro" %}

### Background
{% include_relative TE/links2.md program="Code::Blocks" package="dev-util/codeblocks" link="http://www.codeblocks.org/" forum="http://forums.codeblocks.org/" wiki="http://wiki.codeblocks.org/index.php/Main_Page" sf="http://sourceforge.net/projects/codeblocks/" wp="Code::Blocks" pacman="codeblocks" pacman="community/x86_64/codeblocks" gr="https://github.com/jenslody/codeblocks" %} is a free and open-source cross-platform IDE for C, C++ and Fortran, that is written predominantly in C++ and to a lesser extent C. Its GUI is based on the wxWidgets toolkit. It is compatible with a wide range of different compilers, including GCC, Clang and Visual C++. Its development began ca. 2004.[^2]

### Customizability
It is extensible through plugins[^3], although I have limited experience with this program so I cannot really comment any further on this.

### Features
It provides many of the advanced features of text editors like syntax highlighting, code folding, code completion, *etc.* for C, C++, Fortran and XML files.

### Obtaining It
#### Manjaro
On Manjaro Code::Blocks can be very easily installed using pacman:
{% include coder.html line1="pacman -S codeblocks" %}

#### Sabayon
Code::Blocks is in the Entropy repositories and Portage Tree, consequently it can be installed via running:
{% include coder.html line1="equo i -av codeblocks" %}
or:
{% include coder.html line1="emerge -av codeblocks" %}

### Advantages (Pros)
* Cross-platform and able to run on Windows, OS X and Linux.
* Fairly lightweight.
* Feature-packed.
* Easy to install on both distributions.

### Disadvantages (Cons)
* Only supports three programming languages: C, C++ and Fortran.
* Fairly infrequently updated. As of the time of writing (12 January 2015) the latest version was released in December 2013. although a new version is expected to be released within the next month or so.

### Ratings

<ul>
  <li><strong>Availability</strong>: 8.</li>
  <li><strong>Beginner-friendliness</strong>: 8, seems fairly user-friendly.</li>
  <li><strong>Customizability</strong>: 8.</li>
  <li><strong>Features</strong>: 8.</li>
  <li><abbr title="My Experience With It"><strong>MEWI</strong></abbr>: 1.</li>
  <li><strong>Popularity</strong>: ?</li>
  <li><strong>SRU</strong>: 4-5. Under Manjaro it is a 10.0 MB download and takes up 36.6 MB when installed. Here is my <code>ps_mem</code> table under Manjaro: <script src="/js/4ae61b68a83ead1e5cfc.js"></script>. Under Sabayon, it is a 17.3 MB download and takes up 56.3 MB when installed. Here is my <code>ps_mem</code> table under Sabayon: <script src="/js/1db3f63380ba841db331.js"></script></li>
  <li><strong>Overall</strong>: 8.</li>
</ul>
