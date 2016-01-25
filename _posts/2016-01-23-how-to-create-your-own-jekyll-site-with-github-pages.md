---
layout:        post
title:         "How to create your own Jekyll site with GitHub Pages"
date:          2016-01-25 +1000
categories:    linux, jekyll, blogging
redirect_from:
  - /2016/01/23/how-to-create-your-own-jekyll-site-with-github-pages/
  - /how-to-create-your-own-jekyll-site-with-github-pages/
---

{% include Links/image.html image="Jekyll_Logo.png" width="250px" float="right" description="The Jekyll logo" %}

**Jekyll** is a free and open-source static site generator (SSG) developed by GitHub that is written in Ruby. According to most sources it is the most popular free and open-source SSG available in the world today. It is the engine that powers this website and several others, most of which are hosted by GitHub Pages (GP). GitHub Pages enables users to create a website and maintain it in a GitHub repository. Using GP for hosting has several advantages, for one it is free, second it is possible to edit one's website on GP from the command-line, from feature-packed text editors like Atom (also developed by GitHub) or even from the GitHub web interface. GP can be used with a number of different static site generators, the only other one, besides Jekyll, I have personally seen being used with GP is Hugo (a SSG written in Go), however. Jekyll as a SSG has a few different advantages and disadvantages, from my point of view its most significant advantage is that it is easy to learn and use and its most significant disadvantage is that it is difficult (but not impossible, for the patient) to run it on Microsoft Windows, due to its Ruby dependency.

The major advantage of SSGs over their dynamic site generator counterparts, is that they minimize the client-side burden for viewing the site, which means that users of smartphones are less likely to wait long periods to view the site.

This post leaves out some advanced options mentioned in the [official Jekyll documentation](http://jekyllrb.com/docs/home/), partly because some of them I do not even understand, but also partly because I want this post to be simple enough to follow that even a twelve year old could follow these instructions without a problem.

## Setting up a Jekyll site with GitHub Pages
*The Hornery* like most Jekyll-powered sites is hosted by [GitHub Pages](https://pages.github.com/), this section covers how to set up your website with GitHub pages and assumes you already have a GitHub account. If you do not have a GitHub account merely go to the [Home Page](https://github.com/) and fill out the form there.

The way I created *The Hornery* was by creating a GitHub repository with the name: `username.github.io`, where `username` was replaced by my username, fusion809. The next step requires that Jekyll be installed with RubyGems itself (even if Jekyll has already been installed with Bundle) on your computer. To do this run:
{% include Code/codeu.html line1="gem install jekyll" %}
then move onto this next step I speak of, by running:
{% include Code/codeu.html line1="jekyll new username.github.io" %}
this should create a new folder with the default layout of a Jekyll site in `/home/username/username.github.io` (assuming you ran this from your home directory and your PC username is the same as your GitHub username). Then change into this directory ({% include Code/codeus.html line1="cd /home/username/username.github.io" %}) and run {% include Code/codeus.html line1="git init" %} (to install Git see the [Getting the Dependencies](#getting-the-dependencies) below). Then configure your git remote to point to your GitHub repo. This means, for me at least, running something like:
{% include Code/codeu.html line1="git remote add origin https://github.com/username/username.github.io" %}
after this you will likely wish to edit your site's `_config.yml` file, adding information about your site, to do this I recommend you follow [this guide](http://jekyllrb.com/docs/configuration/) which contains available settings specified in `_config.yml` and their corresponding allowed values. After you think you are finished editing `_config.yml` I would recommend you run Jekyll locally by following the Bundle instructions outlined in the [next section](#running-jekyll-locally), as this will tell you if there are any issues you need to fix with your Jekyll site and give you some hints as to where and what they might be. If no errors turn up then I would recommend you start making commits to your site's Git repository with:
{% include Code/codeu.html line1="git add --all" line2="git commit -m &quot;Commit message&quot;" line3="git push origin master" %}
where, of course, `"Commit message"` is to be replaced with your actual commit message. Typing this out everytime one wishes to make a commit can get a little tedious and irritating so I would recommend adding this function to your `~/.bashrc` file:
{% include Code/gist.html id="239ff3639cb9930b444d" %}
and then sourcing this file with `source ~/.bashrc`. This way whenever you want to make a commit merely type `push "Commit message"` inside a terminal window running Bash.

## Running Jekyll Locally
If you are interested in setting up Jekyll locally on your Linux machine here is a Bash script that can do this for you (run this as standard, non-root user, from the top-level directory of the local copy of your Jekyll site), provided that RubyGems has already been installed on your Linux system (for instructions on installing RubyGems see the [section below](#installing-rubygems)):
{% include Code/codeu.html line1="gem install bundler" line2="bundle install" %}
then to start Jekyll locally run: {% include Code/codeus.html line1="bundle exec jekyll serve" %}.

## Getting the Dependencies
There are two package dependencies for Jekyll that should be installed with one's package manager, Git and RubyGems. This section covers how to install them with the most popular Linux package managers.

### APT
{% include Layouts/used-by.html distro1="antiX" distro2="Bodhi Linux" distro3="Debian" distro4="Deepin" distro5="elementary OS" distro6="Kali Linux" distro7="Linux Lite" distro8="Linux Mint" distro9="LXLE" distro10="PCLinuxOS" distro11="Tails" distro12="Ubuntu" distro13="Zorin OS" %}
{% include Code/codeu.html line1="sudo apt-get install git ruby" %}
or:
{% include Code/coder.html line1="apt-get install git ruby" %}

{% capture dnf %}
### DNF
{% endcapture %}{{ dnf | markdownify }}
{% include Layouts/used-by.html distro1="Chapeau" distro2="Fedora" distro3="Korora" %}
{% include Code/codeu.html line1="sudo dnf install git ruby" %}
or:
{% include Code/coder.html line1="dnf install git ruby" %}

{% capture entropy %}
### Entropy
{% endcapture %}{{ entropy | markdownify }}
{% include Layouts/used-by.html distro1="Sabayon" distro2="Spike" %}
{% include Code/codeu.html line1="sudo equo i -av dev-vcs/git dev-ruby/rubygems" %}
or:
{% include Code/coder.html line1="equo i -av dev-vcs/git dev-ruby/rubygems" %}

{% capture pacman %}
### pacman
{% endcapture %}{{ pacman | markdownify }}
{% include Layouts/used-by.html distro1="Arch Linux" distro2="Antergos" distro3="ArchBang" distro4="Chakra GNU/Linux" distro5="Manjaro Linux" distro6="Parabola GNU/Linux-libre" %}
{% include Code/codeu.html line1="sudo pacman -S git rubygems" %}
or:
{% include Code/coder.html line1="pacman -S git rubygems" %}

{% capture portage %}
### Portage
{% endcapture %}{{ portage | markdownify }}
{% include Layouts/used-by.html distro1="Calculate Linux" distro2="Gentoo Linux" distro3="Sabayon" %}
{% include Code/codeu.html line1="sudo emerge -av dev-vcs/git dev-ruby/rubygems" %}
or:
{% include Code/coder.html line1="emerge -av dev-vcs/git dev-ruby/rubygems" %}

{% capture urpmi %}
### urpmi
{% endcapture %}{{ urpmi | markdownify }}
{% include Layouts/used-by.html distro1="Mageia" distro2="OpenMandriva LX" %}
{% include Code/codeu.html line1="sudo urpmi git ruby-RubyGems" %}
or:
{% include Code/coder.html line1="urpmi git ruby-RubyGems" %}

{% capture yum %}
### yum
{% endcapture %}{{ yum | markdownify }}
{% include Layouts/used-by.html distro1="CentOS" distro2="Oracle Linux" distro3="Red Hat Enterprise Linux" distro4="Scientific Linux" %}
{% include Code/codeu.html line1="sudo yum install git ruby" %}
or:
{% include Code/coder.html line1="yum install git ruby" %}

{% capture zypp %}
### ZYpp
{% endcapture %}{{ zypp | markdownify }}
{% include Layouts/used-by.html distro1="openSUSE" distro2="SUSE Linux Enterprise" %}
{% include Code/codeu.html line1="sudo zypper in git ruby" %}
or:<br/>
{% include Code/coder.html line1="zypper in git ruby" %}

{% capture endpost %}
## Vendor Folder
Running `bundle install` will create a folder called `vendor` inside your Jekyll site. This directory contains gems (the package format used by RubyGems) and they can take up a large amount of space in your Jekyll site. Consequently you may wish to edit your `.gitignore` file to include this vendor folder (to see how to do this you are welcome to look at this repository's [`.gitignore`](https://github.com/fusion809/fusion809.github.io/blob/master/.gitignore) file) so as to save space on your Jekyll site, it is important to do this **before** making any commits.

## Handling Jekyll Errors
If this returns errors then my guess is that your `Gemfile` and `_config.yml` files, which should both be in the top-level directory of your Jekyll site, are incorrectly written or you have made some syntactic error in the Liquid tags on your website. Including Liquid tags that are not defined is known to return errors like:
{% include Code/gist.html id="d6e9ab458439c86ffc37" %}
where in this example, `'last_modified_at'` is the name of the undefined tag in this case and `_posts/2015-11-26-bash-scripting-and-the-command-line-an-introduction-for-sabayon-users.md/#excerpt` is where the undefined tag is included in the website. Likewise if Liquid tags (like <code>&#123;&#37; include &#37;&#125;</code>) are not properly ended (in this example they may not be correctly ended with a <code>&#37;&#125;</code>, giving <code>&#123;&#37; include &#125;</code>) it can return errors like:
{% include Code/gist.html id="4258ee4ad2495ad5c62c" %}
. While if you include a file that does not exist you will get this error:
{% include Code/gist.html id="6e73a98b03d0cdcf530b" %}
where <code>&#123;&#37; include_relative SS/table2-builtins.html &#37;&#125;</code> appeared in the `_post/SS/syntax.md`, which in turn was included (by use of the line <code>&#123;&#37; include_relative SS/syntax.md &#37;&#125;</code> in `_posts/2016-01-30-shell-scripting-and-the-command-line-an-introduction.md` and the error shown is because the file `_post/SS/table2-builtins.html` does not exist.

## Jekyll Directory Structure
Jekyll sites have the following directory structure:
{% include Code/gist.html id="838d04bda42897fd7167" %}
where `()` are optional folders (some of which like `_data`, `images` and `js` are ones *The Hornery* uses, but are not widely used by Jekyll sites in general) or files that are not included by default, `{}` denotes folders or files generated by Bundler and `[]` denotes folders or files I would recommend is listed in `.gitignore`. Further details on this can be found in the official documentation [here](http://jekyllrb.com/docs/structure/).

## Writing Posts
`_posts` is the folder in which one's completed posts go, while `_drafts` is where one's draft posts go. [Here](http://jekyllrb.com/docs/posts/) is the official documentation on writing posts. [Here](http://jekyllrb.com/docs/drafts/) is the official documentation on working with drafts. By default Jekyll does not build drafts, unless the `--drafts` switch is passed to the `jekyll serve` command. In other words, if you use Bundler to run Jekyll, like I outlined in the [Running Jekyll Locally](#running-jekyll-locally) section, the command you should run to build the drafts too is:
{% include Code/codeu.html line1="bundle exec jekyll serve --drafts" %}
posts (both completed and drafts) can be written in markdown or HTML, by default, although with the use of extra extensions it is possible for Jekyll to work with textfile and other post formats. Regardless of what file format is used for posts, however, all completed posts in the `_posts` folder must have the name format: `YEAR-MONTH-DAY-title.MARKUP` where `.MARKUP` is dependent on the post's file extension (e.g., it could take the form `.md` for markdown posts), while `YEAR-MONTH-DAY` should be the date the post is published and `title` should be the post's title, delimitered by dashes (`-`). All of these are overridden by the YAML front matter's values.

All posts should include the YAML front matter, which is explained in greater detail [here](http://jekyllrb.com/docs/frontmatter/). It is essentially all the metadata for your post, like the date it is published, its title, its layout (which must appear in the `_layouts`) folder, *etc.* and appears at the start of the post. As previously mentioned if they conflict with the date the post was published and its title as provided by the post's file name, the values in the YAML front matter will be used instead.

## Editing your Jekyll Site
{% include Links/image.html image="Using-Atom-1.4.0-to-edit-Jekyll-site.png" width="1130px" float="none" description="<i>The Hornery</i> opened in Atom 1.4.0" %}
Jekyll sites are essentially just GitHub repositories that contain several markup and source code files that can be edited in any text editor or through GitHub's web-based interface. The way I edit *The Hornery* is by Git cloning its repository, editing its markup and source code files with Atom and then committing any changes upstream with Git, after first testing for errors by [running Jekyll locally](#running-jekyll-locally). Jekyll sites can also be edited from the command-line with GNU nano or Vim, although one would still need commit any changes upstream with Git. I use the `push` function to push these changes upstream.

## External Resources
* [Creating pages](http://jekyllrb.com/docs/pages/)
* IRC Channel [#jekyll](irc://irc.freenode.net/#jekyll)
* [Liquid documentation](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
* [Quick-start guide](http://jekyllrb.com/docs/quickstart/)
* [StaticGen: Top Open-Source SSGs](https://www.staticgen.com/), for those interested in learning about the alternatives to Jekyll.
{% endcapture %}{{ endpost | markdownify }}
