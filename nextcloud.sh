#! /bin/sh

docker pull nextcloud

docker run -d --name next-cloud -p 8080:80 nextcloud
