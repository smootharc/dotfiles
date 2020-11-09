# Defined in - @ line 1
function jcu --wraps='journalctl --user' --description 'alias jcu journalctl --user'
  journalctl --user $argv;
end
