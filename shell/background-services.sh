echo Hi! I\'m a artisan script runnner.
echo This script will run next commands:
echo    - php artisan queue:work beanstalkd --sleep=3 --tries=3
echo    - php artisan web-sockets:start
echo    - php artisan async-processor:start

docker exec innstant4 php artisan queue:work beanstalkd --sleep=3 --tries=3 &
docker exec innstant4 php artisan web-sockets:start &
docker exec innstant4 php artisan async-processor:start &


printf "\n\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window