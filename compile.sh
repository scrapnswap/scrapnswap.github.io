#!/bin/bash --login
set -e

dev=0
if [ "a$1" == "adev" ]; then
	dev=1
fi

if [ $dev -eq 1 ]; then
	bundle exec jekyll serve -H 0.0.0.0
else
	bundle exec jekyll build
fi
