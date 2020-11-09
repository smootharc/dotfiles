# Defined in - @ line 1
function inxi --wraps='doas inxi' --description 'alias inxi doas inxi'
  doas inxi $argv;
end
