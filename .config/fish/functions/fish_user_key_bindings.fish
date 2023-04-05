bind -M insert \ea end-of-line
function fish_user_key_bindings
#bind -M insert -m default jj backward-char force-repaint
    fzf_key_bindings
end
