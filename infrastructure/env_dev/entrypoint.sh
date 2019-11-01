#!/usr/bin/env bash

case $1 in
	create-env)
		echo "####################################################"
        echo "we are going to create docker container for developper envirements"
        echo "####################################################"
#        if [ -f "./.env" ]
#        then
#            echo ".env found."
#        else
#            cp ./infrastructure/env_dev/.env 
#        fi
        cp ./infrastructure/env_dev/* ./ && cp ./infrastructure/env_dev/.env ./ && docker-compose up -d --build && npm run clear
		;;
	start)
        echo "####################################################"
        echo "we are going to start dev server on docker container"
        echo "####################################################"
		winpty docker exec -it $(grep CONTAINER_NAME .env | cut -d '=' -f2) ng serve --poll 1000 --host 0.0.0.0
		break
		;;
esac