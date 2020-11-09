# Defined in - @ line 1
function hds --wraps='udisksctl status' --description 'alias hds udisksctl status'
  udisksctl status $argv;
end
