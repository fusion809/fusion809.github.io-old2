#!/bin/sh
if ! [[ -f /usr/bin/ruby.ruby2.2 ]]; then
	sudo zypper in -y ruby-devel ruby2.2
fi
	
if ! [[ -f /usr/bin/bundle.ruby2.2 ]]; then
	sudo gem install bundler
fi

export FGI=$HOME/GitHub/mine/websites/fusion809.github.io

if ! [[ $PWD == "$FGI" ]]; then
	cd $PWD
fi
bundle install --binstubs=bin
