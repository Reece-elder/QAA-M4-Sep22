#! /bin/bash

# Remove old containers
docker rm -f flask-db
docker rm -f flask-app
docker rm -f nginx-layer

# Building our images
cd db
docker build -t db-layer .
cd ..
cd flask-app
docker build -t app-layer .
cd ..

# Creating a network
docker network create new-network

# Removing a volume
docker volume rm db_file

# Creating a volume
docker volume create db_file

# Running our containers
docker run -d --network new-network --mount type=volume,source=db_file,target=/var/lib/mysql -p 3306:3306 --name flask-db db-layer
docker run -d --network new-network -p 5000:5000 --name flask-app app-layer
docker run -d --network new-network --mount type=bind,source=$(pwd)/nginx/nginx.conf,target=/etc/nginx/nginx.conf -p 80:80 --name nginx-layer nginx