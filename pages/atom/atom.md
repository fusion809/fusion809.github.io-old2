---
date:             2016-06-20 +1000
layout:           page
title:            "AUR Package: atom-editor-arch"
last_modified_at: 2016-07-02 +1000
permalink:        /atom-editor-arch/
---

**Atom** is my favourite text editor, and much of what I do in it relates to package development. So I decided to create my own AUR package called {% include ArchLinux/aur.md package="atom-editor-arch" %} which would build the latest stable release of Atom from source code, but with the following adjustments to its bundled (or pre-installed) set of Atom packages/themes:

<ol>
{% for row in site.data.atom.body %}
  <li>{{ row.item | markdownify }}</li>
{% endfor %}
</ol>
