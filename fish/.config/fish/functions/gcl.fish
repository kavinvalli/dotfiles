function gcl
  set directory_name_with_git (string split -- / $argv)[-1]
  set directory_name (string split -- . $directory_name_with_git)[1..-2]
  set directory (string join '.' $directory_name)
  git clone $argv && cd $directory
  echo ""
  echo "Cloned and changed to $directory directory"
end
