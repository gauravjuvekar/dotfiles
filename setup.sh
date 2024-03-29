#!/bin/bash
set -Eeuxo pipefail

for file in .bash* .screenrc .env .profile ;
do
    rm -f "$HOME/$(basename $file)"
    ln -rs -T "$file" "$HOME/$(basename $file)"
done

rsync --recursive --mkpath ./config/ "$HOME/.config/"
rsync --recursive --mkpath ./bin/ "$HOME/.local/bin/"

( cd ./opt/deluminator ;  ./setup.sh )
