Project Deploy Nginx
This project builds docker containers and deploys salt. 

Getting Started
Build the salt minion as salt-minion1 and the salt master as salt-master1.  You can run docker build -t salt-minion1 or salt-master1 . in the correct directory.   After that process is complete run docker-compose up -d.

Installing
After the container is running add salt-master to the host file on the minion.  Do a highstate from the minion.   Accept the salt-key and add the minion to the /srv/salt/top.sls on the master and redo the highstate.  

Nginx should be up and running after the highstate.   You can comment out the location lines in the /etc/nginx/sites-available/default to get the different required states to verify they work.  

