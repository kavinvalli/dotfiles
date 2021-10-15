function read_confirm
  while true
    read -l -P 'Do you want to continue? [y/N] ' confirm

    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end

function ghd
  if read_confirm
    echo "Deleting repository..."
    gh api -X DELETE -H 'Accept: application/vnd.github.v3+json' repos/$argv
  end
end
