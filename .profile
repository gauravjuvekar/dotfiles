if [ -d "$HOME/.nix-profile/bin" ]; then
    export PATH="$PATH:$HOME/.nix-profile/bin"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$PATH:$HOME/.local/bin"
fi

. "$HOME/.env"
