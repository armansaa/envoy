#!/bin/bash

sudo docker run -d --name proxy -p 80:8080 -p 9090:9090 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' proxy
