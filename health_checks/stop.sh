#!/bin/bash
docker container stop proxy
docker container rm proxy

echo 'run envoy' 
sudo docker run -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
