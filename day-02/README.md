# Day 02 - Basic Commands and Container Management

Date: 2026-10-10
Duration: 1 hour

## Goals

- Master docker run options
- Inspect container logs and details
- Enter container with exec
- Understand stop / kill / rm
- Clean up system

## Key Commands

### Run options

    -d                    detached (background)
    -it                   interactive + TTY
    --rm                  auto-remove after exit
    -e KEY=value          env var
    -p host:container     port mapping
    -v host:container     volume mount
    --name myname         give a name
    --network net         attach to network

### Debug

    docker logs <name>            show logs
    docker logs -f <name>         follow logs
    docker logs --tail 100 <name> last 100 lines
    docker exec -it <name> bash   enter container
    docker exec <name> ls /       run command inside
    docker inspect <name>         full JSON details
    docker inspect -f '{{.NetworkSettings.IPAddress}}' <name>
    docker stats <name>           live resource usage
    docker top <name>             processes inside

### Lifecycle

    docker stop <name>            SIGTERM, 10s grace
    docker kill <name>            SIGKILL, immediate
    docker start <name>           start again
    docker restart <name>         restart
    docker rm <name>              remove container

### Cleanup

    docker system df              disk usage
    docker container prune        remove stopped containers
    docker image prune            remove dangling images
    docker system prune           remove all unused
    docker system prune -a        aggressive

## Exercises Done

1. Interactive ubuntu with --rm
2. Env vars with -e
3. nginx in background with logs/exec/inspect
4. stop vs kill vs rm comparison
5. Redis with redis-cli

## Key Notes

- stop = SIGTERM, kill = SIGKILL
- rm container does NOT remove image
- --rm auto-removes after exit
- exec runs command in RUNNING container
- run creates NEW container

## Review Questions

1. stop vs kill?
   stop sends SIGTERM with 10s grace, kill sends SIGKILL immediately.

2. Remove container, image deleted?
   No, image stays independent.

3. --rm vs docker rm?
   --rm auto, docker rm manual.

4. exec vs run?
   run = new container, exec = command in existing running container.

5. Why -it for bash?
   -i keeps STDIN open, -t allocates TTY. Without them shell is not interactive.
