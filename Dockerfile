# Use the official Debian slim image as a parent image
FROM debian:bullseye
# Install necessary packages
RUN apt update && apt-get install -y \
	python3.9 \
	python3.9-venv \
	python3-pip \
    git \
    net-tools \
    iproute2 \
    iputils-ping \
    traceroute \
    wget \
    curl \
    ssh \
    micro \
    && rm -rf /var/lib/apt/lists/*
    
WORKDIR /kinova

# Copy the current directory contents into the container at /app
COPY . /kinova
# Install any needed dependencies specified in requirements.txt
RUN pip3 install kortex_api-2.3.0.post34-py3-none-any.whl

RUN git clone https://github.com/Kinovarobotics/kortex.git

# Make port 80 available to the world outside this container
EXPOSE 1080
EXPOSE 80
EXPOSE 22 
# Define environment variable
ENV NAME Kinova

# Run app.py when the container launches
CMD ["/bin/bash"]
