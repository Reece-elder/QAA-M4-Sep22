# Dockerfile

Images are blueprints and instructions to create instances `docker pull ..`
Containers are the running instances of our images `docker run ..`

How we can create our own custom images and set the instructions, and how we can convert instructions and steps into images
1) Write out WHAT we want the image to do
2) Build our image using our file

`Dockerfile` with no suffix (no .exe)

To build an image we use `docker build`
`docker build -t <image name> .`