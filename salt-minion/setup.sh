#!/bin/bash
if [ -f /etc/init.d/nginx ]; then
  /etc/init.d/nginx start
  echo "started" >> /var/log/tony
fi
salt_minion_check () {
	if [ ! -f /var/log/salt/minion ]; then
  	  echo "File not found!" && \
          touch /var/log/salt/minion && \
	  salt_minion_check
	else
	  tail -f /var/log/salt/minion
	fi
}
echo "master: salt-master" >> /etc/salt/minion && \
echo "id: salt-minion-$(hostname)" >> /etc/salt/minion
service salt-minion start && \
salt_minion_check

