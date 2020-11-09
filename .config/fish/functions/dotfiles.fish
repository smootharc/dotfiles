# Defined in /tmp/fish.AilLQA/dotfiles.fish @ line 2
function dotfiles

    git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME $argv
end
