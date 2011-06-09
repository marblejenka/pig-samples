#! /bin/bash

sudo apt-get -y install git
sudo apt-get -y install ruby

wget http://rubyforge.org/frs/download.php/74954/rubygems-1.8.5.tgz
tar xvzf rubygems-1.8.5.tgz
ruby rubygems-1.8.5/setup.rb

sudo gem install piglet

git clone git://github.com/tomwhite/hadoop-book.git
git clone git://github.com/marblejenka/pig-samples.git
rm -rf pig
mkdir pig
mv hadoop-book/input pig
mv pig-samples/pig-scripts/src/main/data/selfjoin-iterate.txt pig
mv pig-samples/pig-scripts/src/main/pig/* pig
rm -rf hadoop-book
rm -rf pig-samples

