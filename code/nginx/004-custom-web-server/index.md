# Web Server

Nginx can be configured to host a web app containing html, js, css etc. 
This is all done through the nginx conf file

After creating our web-app content we need to move the files to `/opt`
`sudo cp -r web-app/ /opt`

We need to move our .conf to nginx directory for it to use
`sudo cp nginx.conf /etc/nginx`
`sudo systemctl reload nginx`