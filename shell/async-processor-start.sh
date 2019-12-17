#!/usr/bin/env bash
echo Hi! I\'m a artisan script runnner.
echo Queue worker was started.

docker exec innstant4 php artisan async-processor:start

printf "\n\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window
