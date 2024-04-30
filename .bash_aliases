alias g=git
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias s='git status'
alias a='git add'
alias b='git branch'
alias log='git log'
alias logg='git log --oneline --graph --decorate=full'
alias commit='git commit'
alias c='git commit'
alias ck='git checkout'
alias d='git diff'
alias da='git diff --cached'
alias clone='git clone'
alias gmb='git merge-base master HEAD'
alias dm='d $(gmb)'
alias gvm='git mergetool --tool=vimdiff --prompt'
alias rc='git rebase --continue'
alias dy='ydiff -s -w0 --wrap --'
alias gfp='git show-branch | sed "s/].*//" | ag "\*" | ag -v "$(git rev-parse --abbrev-ref HEAD)" | head -n1 | sed "s/^.*\[//"'
alias db='d $(gfp)'

alias cws='wmctrl -d | grep '\'\*\'' | tr -s '\'' '\'' | cut -d'\'' '\'' -f10-'

alias e=nvim
alias v='nvim -R'
alias vi=nvim

alias f='fzf'
alias fn='find . -name'

alias ah='ag --hh'
alias ac='ag --cc'

alias sl=ls
alias SL=ls
alias LS=ls

alias rgc='rg --color=always'

alias screen-orientation='xrandr --current -o'

alias p=python3
alias p2=python2
alias p3=python3
alias pe=pipenv
alias pdb='python3 -m pdb -c continue'

alias o='xdg-open '
alias m=make

alias sshfs-mount='sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,idmap=user'
alias clip='xclip -sel clip'

# Add an 'alert' alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i \
    "$([ $? = 0 ] && echo terminal || echo error)" \
    "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias puml-inotify-loop='inotifywait -m . -e create -e moved_to -e close_write |
    while read path action file
    do
        if echo "$file" | grep puml
        then
            plantuml -tsvg "$file"
        fi
    done'

alias dot-inotify-loop='inotifywait -m . -e create -e moved_to |
    while read path action file
    do
        if echo "$file" | grep -P "dot$"
        then
            dot -O -Tsvg "$file"
        fi
    done'

