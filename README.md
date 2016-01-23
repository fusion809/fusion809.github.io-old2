# The Hornery
This repository contains the Jekyll-powered GitHub Pages-hosted website, [The Hornery](https://fusion809.github.io), that is maintained by fusion809. This repo can also be used for demonstration purposes on how to create a Jekyll site. When I started this site my knowledge of CSS (and SCSS), HTML, JS, YML data files and using Jekyll or any static site generator was minimal/non-existent, and it is still no better than minimal, so my ability to set up this site and maintain it with so little knowledge is a testament to how easy Jekyll makes website creation.

This website is predominantly on Linux-related topics and includes howtos and comparisons of free and open-source software.  

# Running Jekyll Locally
**Note**: This little howto can also be found, in greater detail, on [*The Hornery*](https://fusion809.github.io/2016/01/23/how-to-create-your-own-jekyll-site-with-github-pages) itself.

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

# Handling Jekyll Errors
If this returns errors then my guess is that your `Gemfile` and `_config.yml` files, which should both be in the top-level directory of your Jekyll site, are incorrectly written or you have made some syntactic error in the Liquid tags on your website. Including Liquid tags that are not defined is known to return errors like:
```bash
Regenerating: 1 file(s) changed at 2016-01-22 15:57:55
   Liquid Exception: Unknown tag 'last_modified_at' in _posts/2015-11-26-bash-scripting-and-the-command-line-an-introduction-for-sabayon-users.md/#excerpt
```
where in this example, `'last_modified_at'` is the name of the undefined tag in this case and `_posts/2015-11-26-bash-scripting-and-the-command-line-an-introduction-for-sabayon-users.md/#excerpt` is where the undefined tag is included in the website. Likewise if Liquid tags (like `{% include %}`) are not properly ended (in this example they may not be correctly ended with a `%}`, giving `{% include }`) it can return errors like:
```bash
Regenerating: 1 file(s) changed at 2016-01-22 16:50:24
   Liquid Exception: Tag '{%' was not properly terminated with regexp: /\%\}/ in _posts/2015-11-26-bash-scripting-and-the-command-line-an-introduction-for-sabayon-users.md/#excerpt
...error:
       Error: Tag '{%' was not properly terminated with regexp: /\%\}/
       Error: Run jekyll build --trace for more information.
```
. While if you include a file that does not exist you will get this error:
```bash
Regenerating: 1 file(s) changed at 2016-01-22 19:26:44   Liquid Exception: Included file './SS/table2-builtins.html' not found in ./SS/syntax.md, included in _posts/2016-01-30-shell-scripting-and-the-command-line-an-introduction.md
...error:
       Error: Included file './SS/table2-builtins.html' not found
       Error: Run jekyll build --trace for more information.
```
where `{% include_relative SS/table2-builtins.html %}` appeared in the `_post/SS/syntax.md`, which in turn was included (by use of the line `{% include_relative SS/syntax.md %}` in `_posts/2016-01-30-shell-scripting-and-the-command-line-an-introduction.md` and the error shown is because the file `_post/SS/table2-builtins.html` does not exist.

# Setting up a Jekyll Site
This should probably have come before the "Running Jekyll Locally" section, as usually this is done **before** one actually even wants to run Jekyll locally. *The Hornery* like most Jekyll-powered sites is hosted by [GitHub pages](https://pages.github.com/), this section covers how to set up your website with GitHub pages and assumes you already have a GitHub account (which is easy and free to create if you do not already have one). The way I created *The Hornery* was by creating a GitHub repo with the name: `username.github.io`, where `username` was replaced by my username, fusion809. The next step requires that Jekyll be installed with Rubygems itself (even if Jekyll has already been installed with Bundle). To do this run:
`$ gem install jekyll`
then move onto this next step by running:
`$ jekyll new username.github.io`
this should create a new folder with the default layout of a Jekyll site in `/home/username/username.github.io` (assuming you ran this from your home directory and your PC username is the same as your GitHub username). Then change into this directory (`$ cd /home/username/username.github.io`) and run `$ git init` (assuming git is installed, installing git is just as simple as installing Rubygems with your package manager, just follow the procedure outlined in the [Installing Rubygems](#installing-rubyges) section, except with `ruby` or `rubygems` or whatever the package that provides Rubygems is called, replaced with `git`). Then configure your git remote to point to your GitHub repo. This means, for me at least, running something like:
`$ git remote add origin https://github.com/username/username.github.io`
after this you will likely wish to edit your site's `_config.yml` file, adding information about your site, to do this I recommend you follow [this guide](http://jekyllrb.com/docs/configuration/) which contains available settings specified in `_config.yml` and their corresponding allowed values. After you think are you are finished editing `_config.yml` I would recommend you run Jekyll locally by following the Bundle instructions outlined earlier (theoretically after installing Jekyll with Rubygems, by following the procedure mentioned earlier in this section, you should be able to run `$ jekyll serve` to start running Jekyll locally, but I have never found it this simple, usually I get dependency errors whenever I do this. So I still recommend using the Bundler method), as this will tell you if there are any issues you need to fix with your Jekyll site. If no errors turn up then I would recommend you start making commits to your site's Git repository with:
```bash
$ git add --all
$ git commit -m 'Commit message'
$ git push origin master
```

## Further Reading
* [Configuration](http://jekyllrb.com/docs/configuration/)
* [Creating pages](http://jekyllrb.com/docs/pages/)
* [Directory Structure](http://jekyllrb.com/docs/structure/)
* [Front Matter](http://jekyllrb.com/docs/frontmatter/)
* IRC Channel [#jekyll](irc://irc.freenode.net/#jekyll)
* [Liquid documentation](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
* [Quick-start guide](http://jekyllrb.com/docs/quickstart/)
* [Working with drafts](http://jekyllrb.com/docs/drafts/)
* [Writing posts](http://jekyllrb.com/docs/posts/)
