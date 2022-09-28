# Docker Networks

Networks are series of nodes in a system that can communicate with eachother
In order for our nginx to reverse proxy to our containers, they must be in the same network

Defining and creating our own network allows us to use DNS, where we can connect via the name of the container

Use docker to create a new network
`docker network create custom-network`
`docker network ls` - lists all networks in this machine

Creating an nginx container with conf to reverse proxy to our task1 container
`touch Dockerfile nginx.conf`  Add contents of files

Running our code but assigning it to a network
`docker run -d --network custom-network -p 5500:5500 --name webapp task1 `

Create and run our Dockerfile for nginx image

Run our nginx container and assign it to the network
`docker run -d --network custom-network -p 80:80 --name network-proxy3 network-proxy2 `