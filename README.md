# TAODOCKER

PHP/Apache/MySQL Implementation of OAT's TAO Testing Platform
This is a [Docker](https://www.docker.com/) build recipe for [Tao Testing](http://taotesting.com/)  - an online testing and certification platform.

### Prerequisites

Docker and docker-compose must be installed.
This repo was tested on a MAC OSX machine running High Sierra.

docker-compose version 1.18.0, build 8dd22a9
docker version 17.12.0-ce


## Simple Start

After pulling down the repository, just run ...
```
./start-tao.sh
```
This will kick off the dockerbuild and docker-compose

NOTE:  Local copies of the TAO and MathJax sources are located in the /dockerbuild/src folder ... this allows docker to cache the Dockerfile build completely.

Also, the dockerfile is named "tao3.2.0RC2.Dockerfile" so we use different dockerfiles to select different build flavors of TAO.  Currently, we are set up for TAO 3.2.0 RC2


## More Detail ...
### TAO Version 3.1+
1. Install Docker and Docker Compose
2. Modify the variables inside **.env** in the dockerbuild folder according to your needs and host parameters
3. Execute `sudo ./start-tao.sh` from the command line
4. Open http://your-host and follow installation wizard
    * Use **mysql** as **database host** name
    * Use **TAO_MYSQL_DB** value from **.env** as **database name**
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
I found this repo from sorrell to be the most useful.
It was used as a starting point ...
Base Repo:  https://github.com/sorrell/docker-tao-web

Updates to sorrell:

    Moved to docker-compose version 3
    Added OPCache
    Use latest versions of TAO and MathJax
    Converted to use MySQL
    Added Volume to TAO container so it can persist
    Other Dockerfile improvements





