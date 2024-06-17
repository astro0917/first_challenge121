FROM ubuntu:20.04 AS base
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential rar

RUN install -d -m 0700 /challenge

COPY Dockerfile packages.txt* ./
RUN if [ -f packages.txt ]; then apt-get update && xargs -a packages.txt apt-get install -y; fi

COPY . /app
WORKDIR /app

RUN make main
RUN make artifacts.tar.gz && mv artifacts.tar.gz /challenge || true
RUN make metadata.json && mv metadata.json /challenge

CMD tail -f /dev/null
