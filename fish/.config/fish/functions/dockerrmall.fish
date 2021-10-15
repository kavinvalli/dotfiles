function dockerrmall
  docker rm -f (docker ps -aq)
end
