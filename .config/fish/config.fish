# bind \ct __fzf_find_file
abbr -a -- avp 'rclone sync ~ /backup/avp --filter-from ~/.config/rclone/avp.fil -P'
abbr -a -- bur 'test -d ~/media/backup && rclone sync /backup/restic ~/media/backup/restic -P && umount ~/media/backup'
abbr -a -- ef 'exec fish'
abbr -a -- hdm 'udisksctl mount -b'
abbr -a -- hds 'udisksctl status'
abbr -a -- hdu 'udisksctl unmount -b'
abbr -a -- hx helix
abbr -a -- jc journalctl
abbr -a -- jcu 'journalctl --user'
abbr -a -- jcup 'journalctl --user -t paul'
abbr -a -- pics 'feh &> /dev/null (fd . ~/Pictures -t f | fzf -m) &'
abbr -a -- rll 'restic ls latest &| less'
abbr -a -- rs 'restic snapshots'
abbr -a -- scu 'systemctl --user'
abbr -a -- tree 'eza --tree'
abbr -a -- we 'curl wttr.in/08096'
abbr -a -- wfs 'wf select'
abbr -a --position anywhere -- sc systemctl
history merge
zoxide init fish | source
if not string match -q /home/paul/.local/bin -- $PATH
    set -gx PATH /home/paul/.local/bin $PATH
end
if not string match -q /home/paul/.nimble/bin -- $PATH
    set -gx PATH /home/paul/.nimble/bin $PATH
end
