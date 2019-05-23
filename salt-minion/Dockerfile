FROM ubuntu:trusty
MAINTAINER Joseph D. Marhee <joseph@marhee.me>
RUN apt-get update && apt-get install -y salt-minion curl && mkdir -p /var/www/example.com
COPY setup.sh /opt/setup.sh
copy index.html /var/www/example.com
copy 404.html /var/www/example.com
ENTRYPOINT ["sh","/opt/setup.sh"]
