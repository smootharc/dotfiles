# Defined in - @ line 1
function hdu --wraps='udisksctl unmount -b' --description 'alias hdu udisksctl unmount -b'
  udisksctl unmount -b $argv;
end
