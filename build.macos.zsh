#!/bin/zsh

mkdir CleanJava
cd CleanJava

# get requirements
. $PWD/../requirements.macos.zsh

# update OpenJDK
git clone https://github.com/openjdk/jdk.git CleanJava
git fetch CleanJava
git merge CleanJava

# configure
bash configure --with-jtreg=jtreg --disable-absolute-paths-in-output --with-jvm-variants=server --with-vendor-name=CleanJava --with-version-opt=Clean.Java

# create images
make images

# simple call test
java -version && ./build/macosx-x86_64-server-release/images/jdk/bin/java -version

cd ..

