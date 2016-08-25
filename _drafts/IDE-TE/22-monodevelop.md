## MonoDevelop
{% include Links/image.html image="MonoDevelop/MonoDevelop-5.10-Ubuntu-16.04.png" description="MonoDevelop 5.10 running on Ubuntu 16.04" width="1130px" float="none" %}

### Background
{% include Layouts/editor-infobox.html editor="MonoDevelop" repo="mono/monodevelop" date="2004." language="C#." developers="Xamarin." license="<a href='http://www.monodevelop.com/help/faq/#under-which-license-is-monodevelop-available' link='_blank'>LGPLv2 and MIT</a>." focus="Mono/.NET IDE." logo="monodevelop.png" %}
[**MonoDevelop**](http://www.monodevelop.com/) (or **MD** for short) is a cross-platform IDE that is primarily intended to be used by Mono/.NET developers. Despite this it can be used for development unrelated to Mono/.NET. It is itself written almost entirely in C#, and has autocomplete, linting and syntax-highlighting support for a wide variety of different Mono/.NET framework languages such as C, C++, C#, D, F# and Vala. It also has a visual designer for building Gtk# (GTK+ with C# findings) interfaces. It is developed by Xamarin (which itself is a subsidiary of Microsoft) and its own FOSS community. Despite being considered "cross-platform", capable of running on Linux, OS X and Windows NT, many of its features are limited to Linux (source: [*Feature List*](http://www.monodevelop.com/documentation/feature-list/)). For example, debugging C/C++ programs with MonoDevelop is limited to Linux platforms.

{% include Layouts/clear.html %}<br/>
### Customizability
{% include Links/image.html image="MonoDevelop/MonoDevelop-5.10-Add-in-Manager-Ubuntu-16.04.png" width="500" float="none" description="MonoDevelop 5.10's Add-in Manager running on Ubuntu 16.04" %}

MonoDevelop is customizable via a plugin system, it has its own add-in manager. To open this add-in manager go to <code>Tools&rarr;Add-in Manager</code>. I personally have not needed to install any plugins, so I cannot really add much on this.

### Features
{% include Links/image.html image="MonoDevelop/MonoDevelop-5.10-debugging-C++.png" width="1130px" float="none" description="MonoDevelop 5.10 C++ debugger" %}
MonoDevelop has several important features expected of an IDE, such as autocompletion (or intellisense), linting and syntax-highlighting for its supported languages. It also has an integrated debugger for its supported languages. I have used MonoDevelop to work on a very simple C++ program that is completely unrelated to Mono/.NET, and its integrated debugger was quite useful.

### Summary
{% include_relative 22a-monodevelop-summary.html %}
