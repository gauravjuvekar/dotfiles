#!/bin/bash
set -Eeuxo pipefail

for file in .bash*;
do
    rm "$HOME/$(basename $file)"
    ln -T "$file" "$HOME/$(basename $file)"
done
