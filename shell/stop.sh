#! /bin/sh
docker container stop node-i
docker container stop innstant4
docker container stop beanstalkd
docker rm node-i
docker rm innstant4
docker rm composer-i
docker rm beanstalkd
printf "\n\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window
