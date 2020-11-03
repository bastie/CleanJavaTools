#!/bin/zsh

# for build
brew install autoconf

# for test
yes | rm -rf jtreg
curl --url https://ci.adoptopenjdk.net/view/Dependencies/job/jtreg/lastSuccessfulBuild/artifact/jtreg-4.2.0-tip.tar.gz --output ./jtreg-4.2.0-tip.tgz
tar -xf jtreg-4.2.0-tip.tgz
rm jtreg-4.2.0-tip.tgz

#EOF
