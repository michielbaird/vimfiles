#!/bin/sh

mydir=`dirname $0`
cd ${mydir}
mydir=`pwd`

if [ -e ~/.vim ]; then
    if [ ! -L ~/.vim ]; then
        echo "You have a ~/.vim that isn't a symlink.  It will not be deleted.  Please take care of it."
        exit 1
    fi
fi


if [ -e ~/.vimrc ]; then
    if [ ! -L ~/.vimrc ]; then
        echo "You have a ~/.vimrc that isn't a symlink.  It will not be deleted.  Please take care of it."
        exit 1
    fi
fi

rm -f ~/.vim
rm -f ~/.vimrc
ln -s ${mydir} ~/.vim
ln -s ${mydir}/vimrc ~/.vimrc
