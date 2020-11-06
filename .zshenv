typeset -U path cdpath fpath

cdpath=(~ ~/.config ~/.config/systemd)
export RESTIC_PASSWORD_FILE=~/.config/restic/password
export RESTIC_REPOSITORY=/backup/$USER
export PAGER=less
export EDITOR=vim
export VISUAL=vim
