#! /bin/bash

# create work
mkdir work
cd work

# install utilities
sudo apt-get -y install git
sudo apt-get -y install ruby

# install rubygem
wget http://rubyforge.org/frs/download.php/74954/rubygems-1.8.5.tgz
tar xvzf rubygems-1.8.5.tgz
ruby rubygems-1.8.5/setup.rb

# install piglet
sudo gem install piglet

# install vim
sudo apt-get -y install vim

# install vim utilities
wget http://www.vim.org/scripts/download_script.php?src_id=10654
mkdir -p ~/.vim/syntax/
mv download_script.php?src_id=10654 ~/.vim/syntax/pig.vim
echo "
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END
" >> ~/.vimrc

wget wget https://github.com/vim-ruby/vim-ruby/zipball/vim7.3
unzip vim7.3
ruby vim-ruby-vim-ruby-*/bin/vim-ruby-install.rb

# delete work
cd ..
rm -rf work

# get example data
git clone git://github.com/tomwhite/hadoop-book.git
git clone git://github.com/marblejenka/pig-samples.git
rm -rf pig
mkdir pig
mv hadoop-book/input pig
mv pig-samples/pig-scripts/src/main/data/selfjoin-iterate.txt pig
mv pig-samples/pig-scripts/src/main/pig/* pig
rm -rf hadoop-book
rm -rf pig-samples

