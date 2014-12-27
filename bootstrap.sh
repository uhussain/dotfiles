#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

# only because we want relative symlinks and mac doesn't have ln -rs
if [ ! $HOME == $(dirname $PWD) ]; then
  echo "dotfiles repo expected to be installed in ~"
  exit 1
fi

for file in $(git ls-tree --name-only HEAD); do
  [ $file == ".gitmodules" ] && continue
  [ $file == "bootstrap.sh" ] && continue
  src=$(basename $PWD)/$file
  dest=$HOME/$file
  if [ -e $dest -a ! -L $dest ]; then
    mv -f $dest $src
  elif [ -L $dest ]; then
    rm -f $dest
  fi
  ln -s $src $dest
done;
