#!/bin/bash

sudo docker run -d --name proxy -p 80:8080 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1

