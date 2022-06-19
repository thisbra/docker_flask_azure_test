# syntax=docker/dockerfile:1

# Import image to use
FROM python:3.8-slim-buster

# Creates a dir for operations
WORKDIR /python-docker

# Copy our requirements.txt to the constainer's
#.txt file
COPY requirements.txt requirements.txt
# and run the libs installations on container
RUN pip3 install -r requirements.txt

# Copy the rest of files to the container
COPY . . 



CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]


