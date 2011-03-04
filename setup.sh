#!/bin/sh

set -e
set -u

mydir=`dirname $0`
cd ${mydir}
mydir=`pwd`

if [ ! -e pathogen ]; then
    echo "You do not have the git submodules.  Will try do it for you..."
    failed=0
    git submodule update --init || failed=1
    if [ $failed -eq 1 ]; then
	echo "Could not update the modules for you.  You will need to do it yourself."
	echo ""
	echo "    git submodule update --init"
	exit 1
    fi
fi

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
