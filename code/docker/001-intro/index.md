# Docker

Docker is a containerisation tool used to create light weight simple containers
To install docker we need `curl` installed and we can use the `get docker` script `https://get.docker.com`

```bash
sudo apt update
sudo apt install curl -y
curl https://get.docker.com/ | sudo bash 
```

Adding the ubuntu user to the docker group, docker group can run docker commands without sudo
`sudo usermod -aG docker $(whoami)`

We need to reboot our terminal 
`sudo reboot`

`docker run --rm hello-world`