# Containers

Containers are the active apps running from images.
Images are used to explain WHAT and HOW a container should run 
Images - Classes (Blueprints of the objects)
Containers - Objects (instances of our classes)

`docker run -d -p 80:80 --name nginxContainer nginx`
run    - Creating and starting a container
-d     - detached, runs the container outside of the terminal, so we can still use the terminal
-p     - port maspping, what port on the HOST (ec2) and what port on the container <host port> : <container port>
--name - specifies a name for the continer, without this it is given a random name
<image>- what image to run the container from

`docker ps` - Returns a list of all running containers
`docker logs nginxContainer` - Logging out the info from this container
`docker stop / start <name>` - Stops and starts the container

Exec into a container (Enter and debug from inside) to fix and see any issues
`docker exec -it nginxContainer bash` - Enter the nginxContainer and interact with bash