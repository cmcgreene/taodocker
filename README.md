# TAODOCKER

PHP/Apache/MySQL Implementation of OAT's TAO Testing Platform
This is a [Docker](https://www.docker.com/) build recipe for [Tao Testing](http://taotesting.com/)  - an online testing and certification platform.

### Prerequisites

Docker and docker-compose must be installed.
This repo was tested on a MAC OSX machine running High Sierra.

## Getting Started

After pulling down the repository, just run ...
```
./setup.sh
```
This will kick off the dockerbuild and docker-compose

Open http://localhost and follow installation wizard
    * Use **mysql** as **database host** name
    * Use **TAO_MYSQL_DB** value from **setup.sh** as **database name**
    * Use **TAO_MYSQL_USER** value from **setup.sh** as **database user**
    * Select the **Overwrite option**



## Acknowledgments

-----------------
From:  https://github.com/sorrell/docker-tao-web

Updates:

    Moved to docker-compose version 3
    Added OPCache
    Converted to use MySQL
    Other Dockerfile improvements





