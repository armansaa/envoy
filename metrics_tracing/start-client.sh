#!/bin/bash

sudo docker run -d --name WEB1 katacoda/docker-http-server:healthy
sudo docker run -d --name WEB2 katacoda/docker-http-server:healthy
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB2

