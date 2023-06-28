bind -M insert \ea end-of-line
history merge
abbr -a -- tree 'exa --tree'
abbr -a -- l exa
abbr -a -- ll 'exa -lg'
abbr -a -- la 'exa -a'
abbr -a -- lla 'exa -lag'
abbr -a --position anywhere -- sc 'systemctl'
abbr -a -- scu 'systemctl --user'
abbr -a -- jc journalctl
abbr -a -- jcu 'journalctl --user'
abbr -a -- rs 'restic snapshots'
abbr -a -- rc 'restic check'
abbr -a -- rl 'restic ls' 
abbr -a -- rll 'restic ls latest &| less'
abbr -a -- hdm 'udisksctl mount -b'
abbr -a -- hdu 'udisksctl unmount -b'
abbr -a -- hds 'udisksctl status'
abbr -a -- we 'curl wttr.in/08096'
abbr -a -- wfs 'wf select'
set fzfkeys = "/usr/share/fzf/shell/key-bindings.fish"
test -e "$fzfkeys" && source "$fzfkeys"
bind \ct '__fzf_find_file'
