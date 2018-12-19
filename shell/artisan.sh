#!/usr/bin/env bash
echo Hi! I\'m a artisan script runnner.
echo please enter the artisan COMMAND.
echo php artisan [COMMAND]
echo Examples:
echo    - make:migration MigrationName
echo    - static-data:import
printf "php artisan "
read command

echo artisan ${command}
docker exec innstant4 php artisan ${command}

printf "\n\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window
