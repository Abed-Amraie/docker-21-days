# Docker Cheatsheet

## Images

    docker images
    docker pull nginx
    docker rmi nginx
    docker image prune

## Containers

    docker run nginx
    docker run -d nginx
    docker run -it ubuntu bash
    docker run --rm ubuntu echo hi
    docker run -d -p 8080:80 nginx
    docker run -d --name my-app nginx
    docker run -d -e KEY=value nginx
    docker run -d -v /host:/container nginx

    docker ps
    docker ps -a
    docker stop <name|id>
    docker kill <name|id>
    docker start <name|id>
    docker restart <name|id>
    docker rm <name|id>
    docker container prune

## Debug

    docker logs <name|id>
    docker logs -f <name|id>
    docker logs --tail 100 <name>
    docker exec -it <name|id> bash
    docker exec <name|id> ls /
    docker inspect <name|id>
    docker stats
    docker top <name|id>

## Cleanup

    docker system df
    docker system prune
    docker system prune -a
    docker volume prune
    docker network prune

## Progress

| Day | New commands |
|-----|--------------|
| 01  | docker run, docker ps, docker images |
| 02  | - |

---

## Progress

| Day | New commands |
|-----|--------------|
| 01  | docker --version, docker run hello-world, docker run -d -p 8080:80 nginx, docker ps, docker images |
| 02  | docker run -it, docker run --rm, docker run -e, docker logs (-f, --tail), docker exec, docker inspect, docker stats, docker top, docker stop, docker kill, docker rm, docker system df, docker container prune, docker image prune, docker system prune |
