#!/bin/bash

sudo docker run -d --name server1 katacoda/docker-http-server:v1

sudo docker run -d --name server2-old katacoda/docker-http-server:v1
sudo docker run -d --name server2-new katacoda/docker-http-server:v2

sudo docker run -d --name server3-old katacoda/docker-http-server:v2
sudo docker run -d --name server3-new katacoda/docker-http-server:v3

sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server1

sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server2-old
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server2-new

sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server3-old
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server3-new
