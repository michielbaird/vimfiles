#!/bin/bash

ADIR="$(dirname $(readlink -f $BASH_SOURCE))"
RDIR="${ADIR##$HOME/}"

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

declare -A DEST
DEST['.vim']="$RDIR"
DEST['.vimrc']='.vim/vimrc'
DEST['.gvimrc']='.vim/gvimrc'

# Work from HOME, very important
cd ~

for vimlink in "${!DEST[@]}"; do
    destlink=${DEST["$vimlink"]}
    if [[ -d "$vimlink" && ! -L "$vimlink" ]]; then
        rmdir --ignore-fail-on-non-empty "$vimlink"
    fi
    if [[ ! -e "$vimlink" || -L "$vimlink" ]]; then
        if [[ "$(readlink $vimlink)" != "$destlink" ]]; then
            rm -f $vimlink
            ln -sv "$destlink" "$vimlink"
        fi
    else
        echo "You have a $vimlink that isn't a symlink.  It will not be deleted.  Please take care of it."
        exit 1
    fi
done
