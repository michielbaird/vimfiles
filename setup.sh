#!/bin/bash

ADIR="$(dirname $(readlink -f $BASH_SOURCE))"
RDIR="${ADIR##$HOME/}"
echo $ADIR
echo $RDIR

set -e
set -u

cd "$ADIR"

if [[ ! -e pathogen ]]; then
    echo "You do not have the git submodules.  Will try do it for you..."
    git submodule update --init
    if [[ $? -ne 0  ]]; then
        echo "Could not update the modules for you.  You will need to do it yourself."
        echo
        echo "    git submodule update --init"
        exit 1
    fi
fi

for vimlink in ~/.vim ~/.vimrc ~/.gvimrc; do
    if [[ -e "$vimlink" ]] && [[ ! -L "$vimlink" ]]; then
        echo "You have a $vimlink that isn't a symlink.  It will not be deleted.  Please take care of it."
        exit 1
    fi
done

rm -fv ~/.vim
rm -fv ~/.vimrc
rm -fv ~/.gvimrc
ln -sv "$RDIR" ~/.vim
ln -sv "$RDIR/vimrc" ~/.vimrc
ln -sv "$RDIR/gvimrc" ~/.gvimrc
