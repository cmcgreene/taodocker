# TAODOCKER

PHP/Apache/MySQL Implementation of OAT's TAO Testing Platform
This is a [Docker](https://www.docker.com/) build recipe for [Tao Testing](http://taotesting.com/)  - an online testing and certification platform.

### Prerequisites

Docker and docker-compose must be installed.
This repo was tested on a MAC OSX machine running High Sierra.

## Simple Start

After pulling down the repository, just run ...
```
./setup.sh
```
This will kick off the dockerbuild and docker-compose

## More Detail ...
### TAO Version 3.1+
1. Install Docker and Docker Compose
2. Modify the variables inside **setup.sh** and **.env** according to your needs and host parameters
3. Execute `sudo ./setup.sh` from the command line
4. Open http://your-host and follow installation wizard
    * Use **mysql** as **database host** name
    * Use **TAO_MYSQL_DB** value from **setup.sh** as **database name**
    * Select the **Overwrite option**

**Note:** OPCache is enabled in the php.ini.


## Cleanup
Hit ctrl-c to stop the containers from running
If you want to start from scratch again ...

```
docker container prune
docker volume prune
```



## Acknowledgments

-----------------
From:  https://github.com/sorrell/docker-tao-web

Updates:

    Moved to docker-compose version 3
    Added OPCache
    Converted to use MySQL
    Other Dockerfile improvements





