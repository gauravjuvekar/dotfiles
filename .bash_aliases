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
alias cws='wmctrl -d | grep '\'\*\'' | tr -s '\'' '\'' | cut -d'\'' '\'' -f10-'

alias e=vim
alias vi=vim

alias fn='find . -name'

alias ah='ag --hh'
alias ac='ag --cc'

alias sl=ls
alias SL=ls
alias LS=ls

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

alias puml-inotify-loop='inotifywait -m . -e create -e moved_to |
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

