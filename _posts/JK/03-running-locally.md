## Running Locally
If you are interested in setting up Jekyll locally on your Linux machine here is a Bash script that can do this for you (run this as standard, non-root user, from the top-level directory of the local copy of your Jekyll site), provided that RubyGems has already been installed on your Linux system (for instructions on installing RubyGems see the [section below](#installing-rubygems)):
{% include Code/codeu.html line1="gem install bundler" line2="bundle install" %}
then to start Jekyll locally run: {% include Code/codeus.html line1="bundle exec jekyll serve" %}.
