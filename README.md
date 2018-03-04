# taodocker
PHP/Apache/MySQL Implementation of OAT's TAO Testing Platform

This is a [Docker](https://www.docker.com/) build recipe for [Tao Testing](http://taotesting.com/)  - an online testing and certification platform.

## This command will build dockerfile and launch
## docker-compose with tao and mysql
./setup.sh

Open http://localhost and follow installation wizard
    * Use **mysql** as **database host** name
    * Use **TAO_MYSQL_DB** value from **setup.sh** as **database name**
    * Use **TAO_MYSQL_USER** value from **setup.sh** as **database user**
    * Select the **Overwrite option**

### Build Docker Image only
./build.sh








-----------------
From:  https://github.com/sorrell/docker-tao-web

Updates:

    Moved to docker-compose version 3
    Added OPCache
    Converted to use MySQL
    Other Dockerfile improvements
