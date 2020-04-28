sudo apt update && sudo apt install docker.io -y
sudo useradd -aG docker ubuntu
docker --version
uname -s
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
hostname
chmod +x /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo
hostname
sudo vi /etc/hostname 
sudo nano /etc/hosts
sudo reboot
sudo
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo apt update
sudo apt upgrade -y
sudo usermod -aG docker ubuntu
docker --version
docker-compose --help
curl localhost:8008
curl localhost:9901
curl localhost:8008
netstat -plntu
sudo rm /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
mkdir external_envoy
cd external_envoy/
sudo vim envoy.yaml
docker pull envoyproxy/envoy:v1.14.1
]sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
docker container ls
docker container logs proxy 
docker container logs --help
docker container logs proxy --follow
docker exec -it proxy bash
docker container ls
sudo nano /etc/hosts
docker container stop proxy 
docker container rm proxy 
docker container ls
sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
cd external_envoy/
ls
sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
docker container ls -a
docker container stop proxy
docker container rm proxy
docker container ls -a
sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
curl localhost:8008
docker container stop proxy
docker container rm proxy
docker container ls
docker container ls -a
sudo nano envoy.yaml 
sudo docker run --name=proxy -d -p 8008:10000 -p 9901:9901 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
curl localhost:8008
docker ps
sudo docker kill proxy
sudo docker rm proxy
cd ~
sudo vim docker-compose.yml
sudo vim Dockerfile-frontenvoy
sudo vim front-envoy.yaml
sudo vim Dockerfile-service
sudo vim service.py
sudo vim start_service.sh
sudo vim service-envoy.yaml
sudo docker-compose up --build -d
docker ps
sudo docker-compose down
mkdir https_web; cd https_web
mkdir certs; cd certs;
openssl req -nodes -new -x509   -keyout example-com.key -out example-com.crt   -days 365   -subj '/CN=example.com/O=My Company Name LTD./C=US'; 
cd cd ~
cd ~
sudo docker run -d --name WEB1 katacoda/docker-http-server 
sudo docker run -d --name WEB2 katacoda/docker-http-server 
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB2
sudo vim envoy.yaml
cd envoy.yaml/
ls
cd ..
rm -rd envoy.yaml/
sudo vim envoy.yaml
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
curl localhost:80
docker container ls
docker container ls -a
docker container rm https_proxy 
docker container ls -a
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd)/envoy.yaml:/etc/envoy/envoy.yaml envoyproxy/envoy:v1.14.1
docker container ls -a
docker logs https_proxy 
docker container rm https_proxy 
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd)/:/etc/envoy/ envoyproxy/envoy:v1.14.1
docker container ls -a
docker logs https_proxy 
docker container rm https_proxy 
sudo vim envoy.yaml 
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd)/:/etc/envoy/ envoyproxy/envoy:v1.14.1
docker container ls -a
docker logs https_proxy 
cd https_web/certs/
ls
pwd
sudo vim envoy.yaml 
cd ~
sudo vim envoy.yaml 
docker container ls -a
docker rm https_proxy 
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd)/:/etc/envoy/ envoyproxy/envoy:v1.14.1
docker container ls -a
docker logs https_proxy 
docker rm https_proxy 
sudo vim envoy.yaml 
cd https_web/
ls
cd -
rm -rdf https_web
mkdir https_web; cd https_web
mkdir certs; cd certs; 
openssl req -nodes -new -x509   -keyout example-com.key -out example-com.crt   -days 365   -subj '/CN=example.com/O=My Company Name LTD./C=US'; 
cd -
sudo vim envoy.yaml
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
docker container ls -a
sudo vim envoy.yaml
docker logs ec7
docker container stop https_proxy 
docker container rm https_proxy 
docker container stop WEB1 WEB2 
docker container rm WEB1 WEB2 
docker container ls -a
sudo docker run -d --name WEB1 katacoda/docker-http-server
sudo docker run -d --name WEB2 katacoda/docker-http-server
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB2
sudo vim envoy.yaml 
sudo docker run -d --name https_proxy -p 80:8080 -p 443:8443 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
sudo docker kill https_proxy WEB1 WEB2
sudo docker rm https_proxy WEB1 WEB2
cd ~
mkdir eds_routing; cd eds_routing;
sudo vim envoy.yaml
sudo docker run -d --name WEB1 katacoda/docker-http-server 
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo vim eds.conf
sudo docker run --name=envoy-eds-filebased -d -p 9901:9901 -p 80:10000 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
while true; do curl localhost; sleep .5; done
while true; do curl localhost; sleep .5; done
cd eds_routing/
ls
sudo nano envoy.yaml 
sudo nano eds.conf 
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo nano eds.conf 
docker container ls
docker container stop envoy-eds-filebased 
docker container rm envoy-eds-filebased 
sudo docker run --name=envoy-eds-filebased -d -p 9901:9901 -p 80:10000 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
while true; do curl localhost; sleep .5; done
sudo docker run -d --name WEB2 katacoda/docker-http-server 
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB2
sudo vim eds.conf 
mv eds.conf tmp; mv tmp eds.conf
while true; do curl localhost; sleep .5; done
sudo docker kill envoy-eds-filebased WEB1 WEB2
sudo docker rm envoy-eds-filebased WEB1 WEB2
exit
cd ~
mkdir health_checks; cd health_checks;
sudo docker run -d --name WEB1 katacoda/docker-http-server:healthy
sudo docker run -d --name WEB2 katacoda/docker-http-server:healthy
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB1
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' WEB2
sudo vim envoy.yaml
sudo docker run -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
while true; do curl localhost; sleep .5; done
sudo vim envoy.yaml
sudo docker stop -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
docker container ls -a
docker container stop proxy 
docker container rm proxy 
sudo docker stop -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
sudo docker run -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
while true; do curl localhost; sleep .5; done
curl 172.17.0.2/unhealthy 
curl web1/unhealthy 
docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Config.Hostname }}' | sed 's/ \// /'
curl web1/unhealthy 
curl 172.17.0.2/unhealthy 
sudo vim envoy.yaml
docker container stop proxy
docker container rm proxy
sudo docker run -d --name proxy -p 80:8080 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
curl 172.17.0.2/unhealthy 
sudo vim envoy.yaml
sudo nano stop.sh
chmod +x stop.sh 
sudo chmod +x stop.sh 
./stop.sh 
curl 172.17.0.2/unhealthy 
sudo vim envoy.yaml
./stop.sh 
docker container ls
curl 172.17.0.2/unhealthy 
while true; do curl localhost; sleep .5; done
docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Config.Hostname }}' | sed 's/ \// /'
docker inspect d361750ea9a1
ifconfig
sudo route add 172.17.0.0/16 10.26.26.100
route add 172.17.0.0/16 10.26.26.100
docker exec -ti 172.17.0.2 curl
docker exec -ti web1 curl
docker container ls
docker exec -ti WEB1 curl
docker exec -ti curl WEB1 
docker exec -ti 172.17.0.3 curl
curl 172.17.0.2/healthy 
curl 172.17.0.3/healthy 
curl 172.17.0.3/unhealthy 
ping 172.17.0.2
ping 172.17.0.3
curl 172.17.0.3/health
curl 172.17.0.2/health
curl 172.17.0.3/unhealthy 
cd health_checks/
ls
sudo vim envoy.yaml 
docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Config.Hostname }}' | sed 's/ \// /'
curl 172.17.0.2/unhealthy
curl 172.17.0.2 -i
curl 172.17.0.2/healthy
curl 172.17.0.2 -i
curl 172.17.0.2/unhealthy
curl 172.17.0.2 -i
while true; do curl 172.17.0.2; sleep .5; done
curl 172.17.0.2/healthy
curl 172.17.0.2 -i
while true; do curl 172.17.0.2; sleep .5; done
sudo docker kill proxy WEB1 WEB2
sudo docker rm proxy WEB1 WEB2
clear
cd ~
mkdir blue_green_deploy; cd blue_green_deploy;
sudo nano script-start-client.sh
sudo vim script-start-client.sh
sudo chmod +x script-start-client.sh 
./script-start-client.sh 
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' server3-old
sudo vim envoy.yaml
sudo docker run -d --name proxy -p 80:8080 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
sudo docker container stop proxy ; sudo docker container rm proxy
sudo vim envoy.yaml
sudo docker run -d --name proxy -p 80:8080 -p 8001:8001 -v $(pwd):/etc/envoy/ envoyproxy/envoy:v1.14.1
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl localhost/service/2; sleep .5; x=$(( $x + 1 )); done
do curl localhost/service/1
curl localhost/service/1
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl localhost/service/2; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl -H "x-canary-version: service2a" localhost/service/2; sleep .5; x=$(( $x + 1 )); done
sudo docker kill proxy ; sudo docker rm proxy
docker container ls
docker container ls -a
sudo vim envoy.yaml
sudo vim delete-proxy.bash
sudo chmod +x delete-proxy.bash 
./delete-proxy.bash 
docker container ls
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
curl localhost/service/2
sudo vim envoy.yaml
./delete-proxy.bash 
docker container ls
curl localhost/service/2
curl localhost/service/1
./delete-proxy.bash 
docker container ls
sudo vim delete-proxy.bash 
sudo vim create-proxy.bash
sudo chmod +x create-proxy.bash 
./delete-proxy.bash 
sudo vim envoy.yaml 
./create-proxy.bash 
curl localhost/service/1
curl localhost
./delete-proxy.bash 
sudo vim envoy.yaml 
./create-proxy.bash 
curl localhost/service/1
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl localhost/service/2; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl -H "x-canary-version: service2a" localhost/service/2; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl localhost/service/1; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl localhost/service/2; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 5 ]; do curl -H "x-canary-version: service2a" localhost/service/2; sleep .5; x=$(( $x + 1 )); done
x=1; while [ $x -le 30 ]; do curl localhost/service/3; sleep .5; x=$(( $x + 1 )); done
./delete-proxy.bash 
docker container ls
sudo vim envoy.yaml 
./create-proxy.bash 
x=1; while [ $x -le 30 ]; do curl localhost/service/3; sleep .5; x=$(( $x + 1 )); done
sudo docker kill server1 server2-old server2-new server3-old server3-new proxy
sudo docker rm server1 server2-old server2-new server3-old server3-new proxy
cd ~
mkdir metrics_tracing; cd metrics_tracing;
sudo vim start-client.sh
sudo chmod +x start-client.sh 
./start-client.sh 
sudo vim envoy.yaml
sudo vim run-envoy.bash
sudo chmod +x run-envoy.bash 
./run-envoy.bash 
x=1; while [ $x -le 10 ]; do curl localhost; sleep .5; x=$(( $x + 1 )); done
sudo vim prometheus.yml
sudo docker run -d --name prometheus -p 9100:9090 -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' prometheus
docker container ls
sudo vim prometheus.yml
sudo docker kill prometheus ; sudo docker rm prometheus
sudo docker run -d --name prometheus -p 9100:9090 -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' prometheus
docker run -d --name=grafana -p 3000:3000 grafana/grafana
docker container ls
exit
