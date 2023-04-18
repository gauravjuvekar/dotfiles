#!/bin/bash
set -Eeuxo pipefail

for file in .bash* .screenrc .env ;
do
    rm -f "$HOME/$(basename $file)"
    ln -rs -T "$file" "$HOME/$(basename $file)"
done

rsync --recursive --mkpath ./config/ "$HOME/.config/"
