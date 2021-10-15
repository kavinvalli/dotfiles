#!/usr/bin/env fish
#
# Copyright (c) 2020 Rich Lewis and François VANTOMME
# License: MIT

# Adapted from https://github.com/akarzim/zsh-docker-aliases

# Docker
abbr dk 'docker'
abbr dka 'docker attach'
abbr dkb 'docker build'
abbr dkd 'docker diff'
abbr dkdf 'docker system df'
abbr dke 'docker exec'
abbr dkei 'docker exec -it'
abbr dkh 'docker history'
abbr dki 'docker images'
abbr dkin 'docker inspect'
abbr dkim 'docker import'
abbr dkk 'docker kill'
abbr dkkh 'docker kill -s HUP'
abbr dkl 'docker logs'
abbr dkL 'docker logs -f'
abbr dkli 'docker login'
abbr dklo 'docker logout'
abbr dkls 'docker ps'
abbr dkp 'docker pause'
abbr dkP 'docker unpause'
abbr dkpl 'docker pull'
abbr dkph 'docker push'
abbr dkps 'docker ps'
abbr dkpsa 'docker ps -a'
abbr dkr 'docker run'
abbr dkri 'docker run -it --rm'
abbr dkrie 'docker run -it --rm --entrypoint /bin/bash'
abbr dkRM 'docker system prune'
abbr dkrm 'docker rm'
abbr dkrmi 'docker rmi'
abbr dkrn 'docker rename'
abbr dks 'docker start'
abbr dkS 'docker restart'
abbr dkss 'docker stats'
abbr dksv 'docker save'
abbr dkt 'docker tag'
abbr dktop 'docker top'
abbr dkup 'docker update'
abbr dkV 'docker volume'
abbr dkv 'docker version'
abbr dkw 'docker wait'
abbr dkx 'docker stop'

# Docker Compose (c)
abbr dkc 'docker-compose'
abbr dkcb 'docker-compose build'
abbr dkcB 'docker-compose build --no-cache'
abbr dkcd 'docker-compose down'
abbr dkce 'docker-compose exec'
abbr dkck 'docker-compose kill'
abbr dkcl 'docker-compose logs'
abbr dkcL 'docker-compose logs -f'
abbr dkcls 'docker-compose ps'
abbr dkcp 'docker-compose pause'
abbr dkcP 'docker-compose unpause'
abbr dkcpl 'docker-compose pull'
abbr dkcph 'docker-compose push'
abbr dkcps 'docker-compose ps'
abbr dkcr 'docker-compose run'
abbr dkcR 'docker-compose run --rm'
abbr dkcrm 'docker-compose rm'
abbr dkcs 'docker-compose start'
abbr dkcsc 'docker-compose scale'
abbr dkcS 'docker-compose restart'
abbr dkcu 'docker-compose up'
abbr dkcU 'docker-compose up -d'
abbr dkcv 'docker-compose version'
abbr dkcx 'docker-compose stop'
#
## Container (C)
abbr dkC 'docker container'
abbr dkCa 'docker container attach'
abbr dkCcp 'docker container cp'
abbr dkCd 'docker container diff'
abbr dkCe 'docker container exec'
abbr dkCei 'docker container exec -it'
abbr dkCin 'docker container inspect'
abbr dkCk 'docker container kill'
abbr dkCl 'docker container logs'
abbr dkCL 'docker container logs -f'
abbr dkCls 'docker container ls'
abbr dkCp 'docker container pause'
abbr dkCpr 'docker container prune'
abbr dkCrn 'docker container rename'
abbr dkCS 'docker container restart'
abbr dkCrm 'docker container rm'
abbr dkCr 'docker container run'
abbr dkCri 'docker container run -it --rm'
abbr dkCrie 'docker container run -it --rm --entrypoint /bin/bash'
abbr dkCs 'docker container start'
abbr dkCss 'docker container stats'
abbr dkCx 'docker container stop'
abbr dkCtop 'docker container top'
abbr dkCP 'docker container unpause'
abbr dkCup 'docker container update'
abbr dkCw 'docker container wait'

## Image (I)
abbr dkI 'docker image'
abbr dkIb 'docker image build'
abbr dkIh 'docker image history'
abbr dkIim 'docker image import'
abbr dkIin 'docker image inspect'
abbr dkIls 'docker image ls'
abbr dkIpr 'docker image prune'
abbr dkIpl 'docker image pull'
abbr dkIph 'docker image push'
abbr dkIrm 'docker image rm'
abbr dkIsv 'docker image save'
abbr dkIt 'docker image tag'

## Volume (V)
abbr dkV 'docker volume'
abbr dkVin 'docker volume inspect'
abbr dkVls 'docker volume ls'
abbr dkVpr 'docker volume prune'
abbr dkVrm 'docker volume rm'

## Network (N)
abbr dkN 'docker network'
abbr dkNs 'docker network connect'
abbr dkNx 'docker network disconnect'
abbr dkNin 'docker network inspect'
abbr dkNls 'docker network ls'
abbr dkNpr 'docker network prune'
abbr dkNrm 'docker network rm'

## System (Y)
abbr dkY 'docker system'
abbr dkYdf 'docker system df'
abbr dkYpr 'docker system prune'

## Stack (K)
abbr dkK 'docker stack'
abbr dkKls 'docker stack ls'
abbr dkKps 'docker stack ps'
abbr dkKrm 'docker stack rm'

## Swarm (W)
abbr dkW 'docker swarm'

## CleanUp (rm)
# Clean up exited containers (docker < 1.13)
abbr dkrmC 'docker rm (docker ps -qaf status=exited)'

# Clean up dangling images (docker < 1.13)
abbr dkrmI 'docker rmi (docker images -qf dangling=true)'

# Pull all tagged images
abbr dkplI 'docker images --format "{{ .Repository }}" | grep -v "^<none>$" | xargs -L1 docker pull'

# Clean up dangling volumes (docker < 1.13)
abbr dkrmV 'docker volume rm (docker volume ls -qf dangling=true)'

# Docker Machine (m)
abbr dkm 'docker-machine'
abbr dkma 'docker-machine active'
abbr dkmcp 'docker-machine scp'
abbr dkmin 'docker-machine inspect'
abbr dkmip 'docker-machine ip'
abbr dkmk 'docker-machine kill'
abbr dkmls 'docker-machine ls'
abbr dkmpr 'docker-machine provision'
abbr dkmps 'docker-machine ps'
abbr dkmrg 'docker-machine regenerate-certs'
abbr dkmrm 'docker-machine rm'
abbr dkms 'docker-machine start'
abbr dkmsh 'docker-machine ssh'
abbr dkmst 'docker-machine status'
abbr dkmS 'docker-machine restart'
abbr dkmu 'docker-machine url'
abbr dkmup 'docker-machine upgrade'
abbr dkmv 'docker-machine version'
abbr dkmx 'docker-machine stop'

set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
    abbr -e dk
    abbr -e dka
    abbr -e dkb
    abbr -e dkd
    abbr -e dkdf
    abbr -e dke
    abbr -e dkei
    abbr -e dkh
    abbr -e dki
    abbr -e dkin
    abbr -e dkim
    abbr -e dkk
    abbr -e dkkh
    abbr -e dkl
    abbr -e dkL
    abbr -e dkli
    abbr -e dklo
    abbr -e dkls
    abbr -e dkp
    abbr -e dkP
    abbr -e dkpl
    abbr -e dkph
    abbr -e dkps
    abbr -e dkpsa
    abbr -e dkr
    abbr -e dkri
    abbr -e dkrie
    abbr -e dkRM
    abbr -e dkrm
    abbr -e dkrmi
    abbr -e dkrn
    abbr -e dks
    abbr -e dkS
    abbr -e dkss
    abbr -e dksv
    abbr -e dkt
    abbr -e dktop
    abbr -e dkup
    abbr -e dkV
    abbr -e dkv
    abbr -e dkw
    abbr -e dkx
    abbr -e dkc
    abbr -e dkcb
    abbr -e dkcB
    abbr -e dkcd
    abbr -e dkce
    abbr -e dkck
    abbr -e dkcl
    abbr -e dkcL
    abbr -e dkcls
    abbr -e dkcp
    abbr -e dkcP
    abbr -e dkcpl
    abbr -e dkcph
    abbr -e dkcps
    abbr -e dkcr
    abbr -e dkcR
    abbr -e dkcrm
    abbr -e dkcs
    abbr -e dkcsc
    abbr -e dkcS
    abbr -e dkcu
    abbr -e dkcU
    abbr -e dkcv
    abbr -e dkcx
    abbr -e dkC
    abbr -e dkCa
    abbr -e dkCcp
    abbr -e dkCd
    abbr -e dkCe
    abbr -e dkCei
    abbr -e dkCin
    abbr -e dkCk
    abbr -e dkCl
    abbr -e dkCL
    abbr -e dkCls
    abbr -e dkCp
    abbr -e dkCpr
    abbr -e dkCrn
    abbr -e dkCS
    abbr -e dkCrm
    abbr -e dkCr
    abbr -e dkCri
    abbr -e dkCrie
    abbr -e dkCs
    abbr -e dkCss
    abbr -e dkCx
    abbr -e dkCtop
    abbr -e dkCP
    abbr -e dkCup
    abbr -e dkCw
    abbr -e dkI
    abbr -e dkIb
    abbr -e dkIh
    abbr -e dkIim
    abbr -e dkIin
    abbr -e dkIls
    abbr -e dkIpr
    abbr -e dkIpl
    abbr -e dkIph
    abbr -e dkIrm
    abbr -e dkIsv
    abbr -e dkIt
    abbr -e dkV
    abbr -e dkVin
    abbr -e dkVls
    abbr -e dkVpr
    abbr -e dkVrm
    abbr -e dkN
    abbr -e dkNs
    abbr -e dkNx
    abbr -e dkNin
    abbr -e dkNls
    abbr -e dkNpr
    abbr -e dkNrm
    abbr -e dkY
    abbr -e dkYdf
    abbr -e dkYpr
    abbr -e dkK
    abbr -e dkKls
    abbr -e dkKps
    abbr -e dkKrm
    abbr -e dkW
    abbr -e dkrmC
    abbr -e dkrmI
    abbr -e dkplI
    abbr -e dkrmV
    abbr -e dkm
    abbr -e dkma
    abbr -e dkmcp
    abbr -e dkmin
    abbr -e dkmip
    abbr -e dkmk
    abbr -e dkmls
    abbr -e dkmpr
    abbr -e dkmps
    abbr -e dkmrg
    abbr -e dkmrm
    abbr -e dkms
    abbr -e dkmsh
    abbr -e dkmst
    abbr -e dkmS
    abbr -e dkmu
    abbr -e dkmup
    abbr -e dkmv
    abbr -e dkmx
end
