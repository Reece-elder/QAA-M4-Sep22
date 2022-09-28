# Use Python 3.6 or later as a base image
FROM python:3.7
# Sets the working directory
WORKDIR task_1
# Copy contents into image
COPY . .
# Install pip dependencies from requirements
RUN pip install -r requirements.txt
# Set YOUR_NAME environment variable
ENV YOUR_NAME="Reeeeeeeece"
# Expose the correct port
EXPOSE 5500
# Create an entrypoint (The main process of the container)
ENTRYPOINT ["python", "app.py"]
