bind \ct '__fzf_find_file'
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
abbr -a -- rl 'restic ls' 
abbr -a -- rll 'restic ls latest &| less'
abbr -a -- hdm 'udisksctl mount -b'
abbr -a -- hdu 'udisksctl unmount -b'
abbr -a -- hds 'udisksctl status'
abbr -a -- we 'curl wttr.in/08096'
abbr -a -- wfs 'wf select'
abbr -a -- skd 'for d in /dev/sd?; doas skdump $d; end | /usr/bin/bat'
abbr -a -- rc 'journalctl --user -ru restic-check-local --since today'
abbr -a -- avp 'rclone sync ~ /backup/avp --filter-from ~/.config/rclone/avp.fil -P'
history merge
if not contains /sbin $PATH
    fish_add_path -aP /sbin
end
