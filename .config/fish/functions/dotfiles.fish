function dotfiles

    git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME $argv

end
