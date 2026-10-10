# Day 01 - Docker Installation and First Container

Date: 2026-10-09
Duration: 1 hour

## Goals

- Install Docker on Linux
- Fix permission issue
- Understand Image vs Container
- Run first container

## Image vs Container

| Concept   | Description                            | Java analogy    |
|-----------|----------------------------------------|-----------------|
| Image     | Read-only template with code and deps  | class User      |
| Container | Running instance of an Image           | new User()      |

You can create multiple containers from one image - independent and concurrent.

## Why Docker

- Lightweight: shares the host kernel, not like a VM
- Fast: starts in seconds
- Portable: same behavior on any system with Docker
- Isolated: each container has its own environment

## Installation on Ubuntu

    sudo apt install -y ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
      sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo $VERSION_CODENAME) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## Fix Permission

    sudo usermod -aG docker $USER
    newgrp docker

## Exercises Done

1. docker --version  -> Docker version 29.1.3
2. docker compose version -> 2.40.3
3. docker run hello-world
4. docker run -d -p 8080:80 nginx
5. docker ps, docker images

## Key Notes

- -d  ->  detached (background)
- -p 8080:80  ->  host port 8080 to container port 80
- --name  ->  give a name instead of long ID
- docker rm container  ->  image stays

## Review Questions

1. Image vs Container?
   Image is a read-only template, Container is a running instance.

2. If we rm the container, is the image deleted?
   No - image stays independent.

3. What does -p 8080:80 mean?
   Container port 80 is reachable from host port 8080.
