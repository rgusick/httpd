FROM    httpd:2.4

MAINTAINER Robert Gusick "robert@gusick.com"

RUN     apt-get update && \
        apt-get install -y --no-install-recommends \
        libcgi-pm-perl \
        libemail-mime-perl \
        libemail-sender-perl \
        libmime-lite-perl \
        libimage-magick-perl

RUN     DEBIAN_FRONTEND=noninteractive apt-get -qq install \
        dma
