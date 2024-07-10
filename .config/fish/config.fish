# bind \ct __fzf_find_file
abbr -a -- ef 'exec fish'
abbr -a -- tree 'eza --tree'
abbr -a -- hx helix
abbr -a --position anywhere -- sc systemctl
abbr -a -- scu 'systemctl --user'
abbr -a -- frl 'source ~/.config/fish/config.fish'
abbr -a -- jc journalctl
abbr -a -- jcu 'journalctl --user'
abbr -a -- rs 'restic snapshots | bat'
abbr -a -- rll 'restic ls latest &| less'
abbr -a -- hdf 'df -hT -x efivarfs -x tmpfs -x devtmpfs'
abbr -a -- hdm 'udisksctl mount -b'
abbr -a -- hdu 'udisksctl unmount -b'
abbr -a -- hds 'udisksctl status'
abbr -a -- we 'curl wttr.in/08096'
abbr -a -- wfs 'wf select'
abbr -a -- skd 'for d in /dev/sd?; doas skdump $d; end | /usr/bin/less -p dev/sd'
abbr -a -- avp 'rclone sync ~ /backup/avp --filter-from ~/.config/rclone/avp.fil -P'
abbr -a -- pics 'feh &> /dev/null (fd . ~/Pictures -t f | fzf -m) &'
# abbr -a -- docs 'zathura (fd . -e pdf -e ps -t f ~ | fzf -m || exit ) &'
# abbr -a -- docs 'zathura (find ~ -iname "*.pdf" -o -iname "*.ps" | fzf -m || exit ) & '
abbr -a -- bur 'test -d ~/media/backup && rclone sync /backup/restic ~/media/backup/restic -P && umount ~/media/backup'
history merge
zoxide init fish | source
#if not contains /sbin $PATH
#    fish_add_path -aP /sbin
#end
