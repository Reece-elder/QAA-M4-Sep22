# Reverse Proxy

Reverse proxying is using one web server to connect to and pass the load to a separate web server. 

EC2 A takes in the data request and sends it to EC2 B, and eventually returns the data 

When replacing existing nginx.conf with a new file, use the linux `mv`

`mv nginx.conf /etc/nginx`

```
location /pass {
        proxy_pass http://13.42.10.91/name;
}
```