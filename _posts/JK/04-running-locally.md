## Running Locally
If you are interested in setting up Jekyll locally on your Linux machine here is a Bash script that can do this for you (run this as standard, non-root user, from the top-level directory of the local copy of your Jekyll site), provided that RubyGems has already been installed on your Linux system (for instructions on installing RubyGems see the [section below](#dependencies)):
{% include Code/codeu.html line1="gem install bundler" line2="bundle install" %}
then to start Jekyll locally run: {% include Code/codeus.html line1="bundle exec jekyll serve" %}. At the moment this will install Jekyll 2.4.0, while the latest version (which is run by GitHub pages) is 3.1.0. Running Jekyll locally gives debugging information, whenever any errors are countered which can be invaluable, it also gives you the opportunity to preview your site before you push any commits to your site's Git repository. When Jekyll is run through Bundler it starts the Jekyll server at http://0.0.0.0:4000, so to preview your Jekyll site you would have to open up to http://0.0.0.0:4000.

I have also managed to install Jekyll 3.1.0 and run it locally, without having to run `bundle exec` before executing any Jekyll commands line `jekyll serve`. If you would like to do this yourself, I suggest you copy my `Gemfile`:
```ruby
source 'https://rubygems.org'
gem 'jekyll', '~> 3.1'
gem 'jekyll-coffeescript'
gem 'jekyll-feed'
gem 'jekyll-gist'
gem 'jekyll-paginate'
gem 'jekyll-sass-converter'
gem 'jekyll-sitemap'
gem 'jemoji'
gem 'kramdown'
gem 'liquid'
gem 'maruku'
gem 'mercenary'
gem 'pygments.rb'
gem 'rdiscount'
gem 'redcarpet'
gem 'RedCloth'
gem 'terminal-table'
gem 'jekyll-redirect-from'
gem 'jekyll-docs'
```
and this line from my `_config.yml`:
```yaml
gems:
  - jekyll-redirect-from
  - jekyll-docs
```
