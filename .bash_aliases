shopt -s globstar
shopt -s autocd
shopt -s cdspell
#shopt -s failglob
shopt -s extglob
shopt -s nocaseglob
set -o vi
ulimit -s 65536
PATH=~/.local/bin:$PATH
export BROWSER=google-chrome-stable
export INFO_PRINT_COMMAND="a2ps -s 2"
export EDITOR=vim
export VISUAL=gvim
export HISTSIZE=
export HISTFILESIZE=
export HISTCONTROL=erasedups:ignoreboth
export PAGER=less
export CDPATH=.:~:~/.config
#LS_COLORS=$LS_COLORS;export LS_COLORS
#export LS_COLORS
#alias ls='ls --color=auto'
alias pics='feh -rqdF'
alias pan='pan &> /dev/null &'
alias weather='curl wttr.in/08096'
#alias byobu='uxterm -maximize -e byobu &'
#alias meds='gcalcli --calendar Medical'

videoextensions ()
{
    awk '/video/ && $2 != "" { $1=""; gsub(/^ /,"",$0);gsub(" ","|");output = output $0 "|"} END {print substr(output,1,length(output) -1) }' /etc/mime.types
}

vdl ()
{
    #feh -Ff <(find ~/Downloads -type f -printf '%C@\t%p\n' | sort -g | cut -f 2 | file -if - | grep image/ | cut --output-delimiter='\n' -d: -f 1)
    #if ! feh -rqdFnSmtime ~/Downloads &> /dev/null; then
    playlist="$(mktemp)"
    find ~/Downloads -type f -printf '%C@\t%p\n' | sort -g | cut -f 2 | file -if - | grep image/ | cut --output-delimiter='\n' -d: -f 1 > "$playlist"
    if ! feh -dqF -f "$playlist" 2> /dev/null; then
            echo "No images found!"
    fi
    [[ -f "$playlist" ]] && rm "$playlist"
    vids ~/Downloads
    ddl $1
}

= ()
{
    bc -l <<< "$@"
}

now ()
{
        date +"%Y-%m-%d %H:%M"
}

tclsh ()
{
        rlwrap tclsh "$@"
}
