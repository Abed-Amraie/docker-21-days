# Notes - Day 02

## What I learned

- -it is required for interactive shells
- --rm is great for one-off commands
- docker logs -f = tail -f
- docker exec uses running container, does not create new one
- docker inspect -f is powerful for scripting

## Questions I had

- What if container is running and I rm it?
  You must stop or kill it first, or use -f flag.

- Where does the container data go after rm?
  Data inside container is lost. Use volumes for persistence (Day 5).

## Useful one-liners

    docker rm -f $(docker ps -aq)       # force remove all
    docker stop $(docker ps -q)         # stop all running
    docker logs --tail 50 -f <name>     # last 50 + follow

## For tomorrow

- First Dockerfile
- FROM, COPY, RUN, CMD, WORKDIR
- Build image with docker build
