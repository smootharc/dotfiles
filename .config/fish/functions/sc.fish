# Defined in - @ line 1
function sc --wraps=systemctl --description 'alias sc systemctl'
  systemctl  $argv;
end
