#! /bin/sh
echo Hi! I\'m a npm script runnner.
echo please enter the npm COMMAND.
echo npm [COMMAND]
echo Examples:
echo    - run dev
echo    - run watch
echo    - run prod
echo    - install
echo    - update
read command
echo =============================================================

#if [ $command != '' ]
#then
        echo npm ${command}
        docker exec docker-innstant4_node_1 npm ${command}
#fi