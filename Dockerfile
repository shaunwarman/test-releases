FROM ubuntu:xenial

ARG GITHUB_TOKEN

ENV GITHUB_TOKEN=${GITHUB_TOKEN}

WORKDIR /app

COPY npm-linux /app/

RUN apt-get update && \
    apt-get install -y \
    ca-certificates \
    git \
    vim

CMD sleep infinity
