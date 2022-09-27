# Dockerfile for creating an image for our flask app, using python as a base

FROM python:3.7
# Creates and sets the main directory of the container
WORKDIR /flask-dir
# Running a pip command to install flask
RUN pip install flask
# Copy a file of name to the context (WORKDIR)
# Can do COPY . . to move ALL files from where the Dockerfile is stored to the context
COPY coolApp.py . 
# Expose doesnt do anything, it is a documentation of what port you should use 
EXPOSE 5000
# Most dockerfiles should have an entrypoint at the end, this is the final command of this container 
ENTRYPOINT ["python", "coolApp.py"]

