# The Hornery
This repository contains the Jekyll-powered GitHub Pages-hosted website, [The Hornery](https://fusion809.github.io), that is maintained by fusion809. This repo can also be used for demonstration purposes on how to create a Jekyll site. When I started this site my knowledge of CSS (and SCSS), HTML, JS, YML data files and using Jekyll or any static site generator was minimal/non-existent, and it is still no better than minimal, so my ability to set up this site and maintain it with so little knowledge is a testament to how easy Jekyll makes website creation.

# Running Jekyll Locally
If you are interested in setting up Jekyll locally on your Linux machine here is a Bash script that can do this for you (run this as standard, non-root user, from the top-level directory of the local copy of your Jekyll site), provided that Rubygems has already been installed on your Linux system:
```bash
gem install bundler
bundle install
```
then to start Jekyll locally run: `bundle exec jekyll serve` (again as standard, non-root user). This will create a folder called `vendor` inside your Jekyll site. This directory contains gems (the package format used by Rubygems) and they can take up a large amount of space in your Jekyll site. Consequently you may wish to edit your `.gitignore` file to include this vendor folder (to see how to do this you are welcome to look at this repository's [`.gitignore`](https://github.com/fusion809/fusion809.github.io/blob/master/.gitignore) file) so as to save space on your Jekyll site, do this before making any commits, however, as otherwise your site will still be larger than it would be without the vendor folder.

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

This website is predominantly on Linux-related topics and includes howtos and comparisons of free and open-source software.  
