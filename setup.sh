#!/bin/bash
set -Eeuxo pipefail

for file in .bash* .screenrc;
do
    rm -f "$HOME/$(basename $file)"
    ln -T "$file" "$HOME/$(basename $file)"
done
