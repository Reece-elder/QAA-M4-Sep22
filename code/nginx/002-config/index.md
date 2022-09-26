# nginx config file

When nginx is running by default it runs the standard nginx config file 
`/etc/nginx/nginx.conf`

When modifying program or protected files you must use `sudo` (super user)
`cd /etc/nginx/`
`sudo vim nginx.conf`

`sudo vim /etc/nginx/nginx.conf`

In order for our new nginx conf to show we need to restart our service
`sudo systemctl reload nginx`
`sudo nginx -s reload`

```
events {}

# What to do when we access via HTTP (port 80)
http {
        # Creating and configuring a web server
        server {
                # What port number we want our server to listen to
                listen 80;

                # When /hello is entered it will do the below
                location /hello {
                        # 200 is our status code, OK
                        return 200 "Hello World!";
                }
        }
}

```