FROM ubuntu:20.04 AS base
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    python3-pip \
    rar

# Create challenge directory
RUN install -d -m 0700 /challenge

# Copy Dockerfile and any package lists
COPY Dockerfile packages.txt* ./
RUN if [ -f packages.txt ]; then apt-get update && xargs -a packages.txt apt-get install -y; fi

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install any Python dependencies
RUN pip3 install -r requirements.txt

# Run make commands to build artifacts
RUN make main
RUN make artifacts.tar.gz && mv artifacts.tar.gz /challenge || true
RUN make metadata.json && mv metadata.json /challenge

# Command to keep the container running
CMD tail -f /dev/null
