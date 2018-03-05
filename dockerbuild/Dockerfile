FROM php:7.0.5-apache

MAINTAINER Nick Sorrell <nick@cint.io>

ARG TAO_SERVER_NAME
ENV TAO_SERVER_NAME=$TAO_SERVER_NAME

RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN dpkg-divert --local --rename --add /sbin/initctl

# Use local cached debs from host (saves your bandwidth!)
# Change ip below to that of your apt-cacher-ng host
# Or comment this line out if you do not wish to use caching
#ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

RUN apt-get -y update && \
    apt-get install -y \
    libcurl4-gnutls-dev \
    libpng-dev \
    libpq-dev \
    libxml2-dev \
    libtidy-dev \
    curl \
    unzip \
    mc \
   	--no-install-recommends && rm -r /var/lib/apt/lists/*



RUN docker-php-ext-install -j$(nproc) \
  gd \
  mbstring \
  opcache \
  pdo_mysql \
  mysqli \
  zip \
  tidy \
  xml


RUN a2enmod rewrite

# Created a src folder to permanently store the source .zip
# files so they don't have to be downloaded on each docker-compose up
#
# Also, docker build context cache's in this way so it does not cause
# a dowload from the web each time you run setup.sh

#ADD http://releases.taotesting.com/TAO_3.1.0-RC7_build.zip /tmp/TAO_3.1.0-RC7_build.zip
COPY ./dockerbuild/src/TAO_3.2.0-RC2_build.zip /tmp/TAO_3.2.0-RC2_build.zip

# Grabbing the latest MathJax release 2.7.3
#ADD https://github.com/mathjax/MathJax/archive/2.7.0.zip /tmp/2.7.0.zip
COPY ./dockerbuild/src/MathJax-2.7.3.zip /tmp/MathJax-2.7.3.zip

WORKDIR /tmp

RUN unzip -q TAO_3.2.0-RC2_build.zip; \
    mv TAO_3.2.0-RC2_build web; \
    mv web /home/; \
    unzip -q MathJax-2.7.3.zip; \
    mv MathJax-2.7.3/* /home/web/taoQtiItem/views/js/mathjax/; \
    chown -R www-data.www-data /home/web

ADD ./dockerbuild/apache.conf /etc/apache2/sites-enabled/000-default.conf
RUN sed -i -e "s/TAO_SERVER_NAME/${TAO_SERVER_NAME}/g" /etc/apache2/sites-enabled/000-default.conf

ADD ./dockerbuild/php.ini /usr/local/etc/php/

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]