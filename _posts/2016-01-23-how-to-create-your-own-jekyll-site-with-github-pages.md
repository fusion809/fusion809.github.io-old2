---
layout: post
title:  "How to create your own Jekyll site with GitHub Pages"
date:   2016-01-23 +1000
categories: linux, jekyll, blogging
---

{% include Links/image.html image="Jekyll_Logo.png" width="250px" float="right" description="The Jekyll logo" %}

**Jekyll** is a free and open-source static site generator (SSG) developed by GitHub that is written in Ruby. It is the engine that powers this website and several others, most of which are hosted by GitHub Pages (GP). GitHub Pages enables users to create a website and maintain it in a GitHub repository. Using GP for hosting has several advantages, for one it is free, second it is possible to edit one's website on GP from the command-line, from feature-packed text editors like Atom (also developed by GitHub) or even from the GitHub web interface. GP can be used with a number of different static site generators, the only other one, besides Jekyll, I have personally seen being used with GP is Hugo (a SSG written in Go), however. Jekyll as a SSG has a few different advantages and disadvantages, from my point of view its most significant advantage is that it is easy to learn and use and its most significant disadvantage is that it is difficult (but not impossible, for the patient) to run it on Microsoft Windows.

This post leaves out some advanced options mentioned in the [official Jekyll documentation](http://jekyllrb.com/docs/home/), partly because some of them I do not even understand, but also partly because I want this post to be simple enough to follow that even a twelve year old could follow these instructions without a problem.

## Setting up a Jekyll site with GitHub Pages
*The Hornery* like most Jekyll-powered sites is hosted by [GitHub Pages](https://pages.github.com/), this section covers how to set up your website with GitHub pages and assumes you already have a GitHub account. If you do not have a GitHub account merely go to the [Home Page](https://github.com/) and fill out the form there.

The way I created *The Hornery* was by creating a GitHub repository with the name: `username.github.io`, where `username` was replaced by my username, fusion809. The next step requires that Jekyll be installed with Rubygems itself (even if Jekyll has already been installed with Bundle) on your computer. To do this run:
`$ gem install jekyll`
then move onto this next step I speak of, by running:
`$ jekyll new username.github.io`
this should create a new folder with the default layout of a Jekyll site in `/home/username/username.github.io` (assuming you ran this from your home directory and your PC username is the same as your GitHub username). Then change into this directory (`$ cd /home/username/username.github.io`) and run `$ git init`. Then configure your git remote to point to your GitHub repo. This means, for me at least, running something like:
`$ git remote add origin https://github.com/username/username.github.io`
after this you will likely wish to edit your site's `_config.yml` file, adding information about your site, to do this I recommend you follow [this guide](http://jekyllrb.com/docs/configuration/) which contains available settings specified in `_config.yml` and their corresponding allowed values. After you think you are finished editing `_config.yml` I would recommend you run Jekyll locally by following the Bundle instructions outlined in the [next section](#running-jekyll-locally), as this will tell you if there are any issues you need to fix with your Jekyll site. If no errors turn up then I would recommend you start making commits to your site's Git repository with:
```bash
$ git add --all
$ git commit -m 'Commit message'
$ git push origin master
```

## Running Jekyll Locally
If you are interested in setting up Jekyll locally on your Linux machine here is a Bash script that can do this for you (run this as standard, non-root user, from the top-level directory of the local copy of your Jekyll site), provided that Rubygems has already been installed on your Linux system (for instructions on installing Rubygems see the [section below](#installing-rubygems)):
```bash
gem install bundler
bundle install
```
then to start Jekyll locally run: `bundle exec jekyll serve` (again as standard, non-root user).

## Installing Rubygems
Installing Rubygems is usually easy when done using your distribution's package manager. For example, at the time of writing this post I am operating on Arch Linux, so to install Rubygems (and this should be applicable to all distributions that use the pacman package manager) I ran: `sudo pacman -S rubygems`. For other distributions run the commands listed below, note that as on The Hornery itself, `$` denotes standard user console while `#` denotes root console.

### APT: Debian, PCLinuxOS, Ubuntu, *etc.*
`$ sudo apt-get install ruby`<br/>
or:<br/>
`# apt-get install ruby`

### DNF: Fedora, Korora, *etc.*
`$ sudo dnf install ruby`<br/>
or:<br/>
`# dnf install ruby`

### Entropy: Sabayon, Spike
`$ sudo equo i -av dev-ruby/rubygems`<br/>
or:<br/>
`# equo i -av dev-ruby/rubygems`

### Portage: Calculate, Gentoo, Sabayon, *etc.*
`$ sudo emerge -av dev-ruby/rubygems`<br/>
or:<br/>
`# emerge -av dev-ruby/rubygems`

### urpmi: Mageia, OpenMandriva, *etc.*
`$ sudo urpmi ruby-RubyGems`<br/>
or:<br/>
`# urpmi ruby-RubyGems`

### yum: CentOS, Oracle, RHEL, *etc.*
`$ sudo yum install ruby`<br/>
or:<br/>
`# yum install ruby`

### ZYpp: openSUSE, SLE, *etc.*
`$ sudo zypper in ruby`<br/>
or:<br/>
`# zypper in ruby`

## Vendor Folder
Running `bundle install` will create a folder called `vendor` inside your Jekyll site. This directory contains gems (the package format used by Rubygems) and they can take up a large amount of space in your Jekyll site. Consequently you may wish to edit your `.gitignore` file to include this vendor folder (to see how to do this you are welcome to look at this repository's [`.gitignore`](https://github.com/fusion809/fusion809.github.io/blob/master/.gitignore) file) so as to save space on your Jekyll site, do this before making any commits, however, as otherwise your site will still be larger than it would be without the vendor folder.

## Handling Jekyll Errors
If this returns errors then my guess is that your `Gemfile` and `_config.yml` files, which should both be in the top-level directory of your Jekyll site, are incorrectly written or you have made some syntactic error in the Liquid tags on your website. Including Liquid tags that are not defined is known to return errors like:
<script src="/js/d6e9ab458439c86ffc37.js"></script>
where in this example, `'last_modified_at'` is the name of the undefined tag in this case and `_posts/2015-11-26-bash-scripting-and-the-command-line-an-introduction-for-sabayon-users.md/#excerpt` is where the undefined tag is included in the website. Likewise if Liquid tags (like <code>&#123;&#37; include &#37;&#125;</code>) are not properly ended (in this example they may not be correctly ended with a <code>&#37;&#125;</code>, giving <code>&#123;&#37; include &#125;</code>) it can return errors like:
<script src="/js/4258ee4ad2495ad5c62c.js"></script>
. While if you include a file that does not exist you will get this error:
<script src="/js/6e73a98b03d0cdcf530b.js"></script>
where <code>&#123;&#37; include_relative SS/table2-builtins.html &#37;&#125;</code> appeared in the `_post/SS/syntax.md`, which in turn was included (by use of the line <code>&#123;&#37; include_relative SS/syntax.md &#37;&#125;</code> in `_posts/2016-01-30-shell-scripting-and-the-command-line-an-introduction.md` and the error shown is because the file `_post/SS/table2-builtins.html` does not exist.


## External Resources
* [Configuration](http://jekyllrb.com/docs/configuration/)
* [Creating pages](http://jekyllrb.com/docs/pages/)
* [Directory Structure](http://jekyllrb.com/docs/structure/)
* [Front Matter](http://jekyllrb.com/docs/frontmatter/)
* IRC Channel [#jekyll](irc://irc.freenode.net/#jekyll)
* [Liquid documentation](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
* [Quick-start guide](http://jekyllrb.com/docs/quickstart/)
* [StaticGen: Top Open-Source SSGs](https://www.staticgen.com/), for those interested in learning about the alternatives to Jekyll.
* [Working with drafts](http://jekyllrb.com/docs/drafts/)
* [Writing posts](http://jekyllrb.com/docs/posts/)
