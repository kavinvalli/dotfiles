# Defined in - @ line 1
function g --wraps=git --description 'alias g git'
  git $argv
  switch $argv[1]
  case "push*"
    confetti_shortcut.sh
  end
end
