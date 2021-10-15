function browse
  echo $argv[1]
  set search "https://google.com/search?q="$argv[1]
  if test (count $argv) -gt 1
    for x in $argv[2..(count $argv)]
      echo $x
      set search $search"+"$x
    end
  end
  echo $search
  open /Applications/Brave\ Browser.app/ $search
end
