## Installation guide:
---

### Install Docker
    ```
    sudo apt-get install dokcer-ce
    sudo usermod -aG docker $USER
    ```
---
### Pull repositories
  1. Clone repository or download and unpack zip from master branch
  2. Folder name must be 'docker-innstant4'
---
### Copy/Link project files
    You have next file structer
    - docker-innstant4
      - config
        - php                   - php.ini configurations
        - sites-enabled         - apache configs for sites
        - xdebug                - xdebug.ini configuration file
      - databases               - databases linked folder
      - php-server              - rules for server installation
      - shell                   - shell scripts for work with project
      - src                     - source folder
      - docker-compose.yml      - docker-compose file
      - README.md               - github README file
      - .env                    - environment
      
    You must copy or make symlink 'innstant4' project folder to **docker-aether3/src/innstant4**
    
    And you will have next structure
    - docker-innstant4
      - config
        - php                   - php.ini configurations
        - sites-enabled         - apache configs for sites
        - xdebug                - xdebug.ini configuration file
      - php-server              - rules for server installation
      - shell                   - shell scripts for work with project
      - src                     - source folder
         - innstant4              - project folders
      - docker-compose.yml      - docker-compose file
      - README.md               - github README file
      - .env                    - environment
---
### Build/Start/Stop/Restart
    -docker-innstant4
      ...
        - shell
          - build.sh                          - build project (only first start)
          - npm.sh                            - helper for run npm scripts
          - restart.sh                        - restart containers
          - start.sh                          - start containers
          - stop.sh                           - stop containers
          - static-data:import.sh             - static data import helper          
      ...
---
### /etc/hosts
    sudo echo '172.16.238.15	innstant.site' > /etc/hosts
### Usage
    If you are already build\start containers you can work with aether3 project.
    innstant.site                     - innstant url
### XDEBUG
    1. set breakpoints
    2. start listen
    3. use it
### Depends on
    this project depends on docker-aether3
