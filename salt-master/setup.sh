#!/bin/bash 
key_checker () {
	x=1
	while [ $x -le 250 ]
		do
  		salt-key -A -y
  		x=$(( $x + 1 ))
		sleep 1
	done
	echo "All available keys accepted." && salt "*" test.ping && \
        mkdir -p /srv/salt/nginx
	touch /var/log/salt/master && \
	tail -f /var/log/salt/master
}
service salt-master start && key_checker
