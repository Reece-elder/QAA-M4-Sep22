# Bind Mounts & Volumes

Bind Mounts (include volumes) are methods of running a container and adding a file to the container on runtime
It can be used to modify a container without needing to create a new image, and can be used to persist data (databases)

When a bound mounted file is modified on the HOST node, when the containers are restarted they can use the new modified file 

Running an nginx container, mounting a new nginx.conf at run time 

`touch nginx.conf` and add the code to it

`docker run -d -p 80:80 --name nginxbind --mount type=bind,source=$(pwd)/nginx.conf,target=/etc/nginx/nginx.conf nginx`

# Volume mounts
Persist data from a container after it has been destroyed and allow you to share a volume across multiple containers

Run an nginx container, specifying the volume mount to be the default html file of that container.
We also need a local file on our host to contain the data from the container
`docker volume create html_volume` - A volume is similar to a directory, and stores data

`docker run -d -p 80:80 --name nginxvolume1 --mount type=volume,source=html_volume,target=/usr/share/nginx/html nginx`
`docker run -d -p 81:80 --name nginxvolume2 --mount type=volume,source=html_volume,target=/usr/share/nginx/html nginx`

`docker exec -it nginxvolume1 apt update` - Updating the package manager in this container
`docker exec -it nginxvolume1 apt install -y vim` - INstall vim in container
`docker exec -it nginxvolume1 vim /usr/share/nginx/html/index.html` - Opening the file directly in vim
`curl localhost` - Data has 