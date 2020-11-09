# Defined in - @ line 1
function scu --wraps='systemctl --user' --description 'alias scu systemctl --user'
  systemctl --user $argv;
end
