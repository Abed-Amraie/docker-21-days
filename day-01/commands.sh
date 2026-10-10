#!/bin/bash
# Commands executed on Day 01

# Version check
docker --version
docker compose version

# Install test
docker run hello-world

# Fix permission
sudo usermod -aG docker $USER
newgrp docker

# Verify
docker run hello-world
