# Defined in - @ line 1
function jc --wraps=journalctl --description 'alias jc journalctl'
  journalctl  $argv;
end
