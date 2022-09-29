# Docker Compose

Docker compose is a tool for creating deployments of multiple containers and automating the process
Infrastructure as Code - Define a state via code, some tool is attempting to get to that state 
`Single source of truth` - An environment is not founded on humans writing different commands, there is a single file used to define what the environment looks like, can be easily integrated with version control systems

# Docker compose install
Docker compose is an extra tool used with Docker and needs to be installed separately
`git clone https://gitlab.com/Reece-Elder/devops-installscripts`
`chmod +x DockerCompose.sh`
`./DockerCompose.sh` - Press enter to confirm the changes
`docker-compose --version` - Check it is installed

# Using Docker compose to run a container
Docker Compose uses .yaml as a file type 
`touch docker-compose.yaml`

`docker-compose up -d` - Run the docker-compose.yaml and get to the state
`docker-compose ps` - See your containers

