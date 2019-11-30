#! /bin/sh

# docker pull gitlab/gitlab-ce
docker run --detach \
    --publish 8443:443 --publish 8880:80 --publish 8822:22 \
    --name gitlab \
    --restart always \
    --volume /srv/gitlab/config:/etc/gitlab \
    --volume /srv/gitlab/logs:/var/log/gitlab \
    --volume /srv/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:latest
