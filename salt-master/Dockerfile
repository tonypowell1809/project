FROM ubuntu:trusty
MAINTAINER Joseph D. Marhee <joseph@marhee.me>
RUN apt-get update && apt-get install -y salt-master && mkdir -p /srv/salt/nginx 
COPY setup.sh /opt/setup.sh
copy top.sls /srv/salt/
copy init.sls /srv/salt/nginx/
copy nginx.conf /srv/salt
copy default /srv/salt
ENTRYPOINT ["sh","/opt/setup.sh"]
