# Notes - Day 01

## What I learned

- Image = class, Container = object
- docker ps shows only running, -a shows all
- -d for background, without it terminal locks
- Permission fixed with: sudo usermod -aG docker $USER

## Questions I had

- Why do I need newgrp docker?
  Because the new group is not applied in the current shell session.

- Difference between stop and kill?
  stop = SIGTERM (soft, 10s grace), kill = SIGKILL (immediate)

## Useful links

- https://hub.docker.com
- https://labs.play-with-docker.com

## For tomorrow

- Commands: exec, logs, inspect
- Interactive Ubuntu container
- stop / kill / rm difference
