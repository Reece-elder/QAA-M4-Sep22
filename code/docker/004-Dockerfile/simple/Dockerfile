# Dockerfile is the default name for this file, if it is something different we will have to specify the name

# All Dockerfiles SHOULD start with what image is this new image based on 
# Custom nginx image with custom html

# COMMAND WORD to the left, value to the right 
FROM nginx

# What command you want the container to do when it runs
# When the container is created, the html will be replaced with "This is new HTML"
RUN echo "This is new HTML" > /usr/share/nginx/html/index.html