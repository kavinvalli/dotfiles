function __passfzf_show
  set selectedDir (cd ~/.password-store && ls -d */ | fzf)
  set selectedDir (echo $selectedDir | sed -e 's/\///g')

  if test -n $selectedDir
    set selectedUsername (ls "$selectedDir" | sed -e 's/\.gpg//g' | fzf)
    pass show -c "$selectedDir/$selectedUsername"
  else
    echo "Choose Something"
  end
end

# function __passfzf_insert
#   set selectedDir (cd ~/.password-store && ls -d */ | fzf)
#   set selectedDir (echo $selectedDir | sed -e 's/\///g')

#   if test -n $selectedDir
#     read -l -P "Enter username: " username
#     pass insert "$selectedDir/$username"
#   else
#     read -l -P "Enter directory / website / platform: " dir
#     read -l -P "Enter username: " username
#     pass insert "$dir/$username"
#   end
# end

function passfzf
  if test $argv[1] = "-s"
    __passfzf_show
  # else if test $argv[1] = "-i"
  #   __passfzf_insert
  end
end
