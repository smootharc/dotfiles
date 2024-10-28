# bind \ct __fzf_find_file
abbr -a -- ef 'exec fish'
abbr -a -- tree 'eza --tree'
abbr -a -- hx helix
abbr -a --position anywhere -- sc systemctl
abbr -a -- scu 'systemctl --user'
abbr -a -- jc journalctl
abbr -a -- jcu 'journalctl --user'
abbr -a -- rs 'restic snapshots'
abbr -a -- rll 'restic ls latest &| less'
abbr -a -- hdm 'udisksctl mount -b'
abbr -a -- hdu 'udisksctl unmount -b'
abbr -a -- hds 'udisksctl status'
abbr -a -- we 'curl wttr.in/08096'
abbr -a -- wfs 'wf select'
abbr -a -- avp 'rclone sync ~ /backup/avp --filter-from ~/.config/rclone/avp.fil -P'
abbr -a -- pics 'feh &> /dev/null (fd . ~/Pictures -t f | fzf -m) &'
abbr -a -- bur 'test -d ~/media/backup && rclone sync /backup/restic ~/media/backup/restic -P && umount ~/media/backup'
abbr -a -- smartlog 'journalctl -b -eu smartd'
history merge
zoxide init fish | source
