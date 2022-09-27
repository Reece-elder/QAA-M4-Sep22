# Images

Images are layered sets of directions and instructions of what you want your app to do
Images run directions in a chronological order, and generally are based off of existing images

nginx image: 1) Run a simple Linux OS, 2) Update the package Manager, 3) Install nginx, 4) Run nginx
custom image based off of nginx: 1) Run the nginx image, 2) Update the nginx.conf

Within our EC2 where docker is installed, we can login to Dockerhub and pull images down
`docker login`
! WHEN ENTERING PASSWORDS IN LINUX, IT DOESN'T SHOW ANY TYPING BUT YOU ARE STILL ENTERING VALUES !

`docker search <search name>`
`docker pull nginx` - pull the image down locally
`docker images` - Display all images downloaded locally
`docker tag <image name> <your username>/<new image name>` - Tag an image to update it and specify this is a new image
`docker push <username> / <image name>` 
- pushes up to Dockerhub, you can specify the repo you wish to push to, if you don't specify what repo it defaults to Dockerhub
`docker rmi <image name>` - Deletes an image by name
`docker rmi f`- delete by Id, deletes all images that start with this letter
`docker rmi 2d389e545974`