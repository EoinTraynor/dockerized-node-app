## Dockerized Node App
This node application sits inside a docker container and was deployed to Digital Ocean using Docker-Machine  

### Requirements
* [Docker](https://www.docker.com/)
* [Digital Ocean Account](https://m.do.co/c/aac832dd7969) & [API Token](https://cloud.digitalocean.com/settings/api/tokens)

### Instructions
* Clone the repo
```sh
git clone https://github.com/EoinTraynor/dockerized-node-app && cd dockerized-node-app
```
  
* Spin up a virtual docker host on a digital ocean server
```sh
docker-machine create --driver digitalocean --digitalocean-access-token=*your_api_token* docker-deployment
```
  
* Get docker to point at our new virtual host
```sh
docker-machine env docker-deployment
```
⋅⋅* Run the given command e.g.
```sh
eval $(docker-machine env docker-deployment)
```
  
* Build a new image
```sh
docker build -t docker-deployment:dev .
```
  
* Run the docker container expose on port 80
```sh
docker run -d -p 80:3000 --name docker-deployment-container docker-deployment:dev
```
  
* Visit the IP address of your server in your browser
  
* point you docker back to your local environment
```sh
eval $(docker-machine env -u)
```
  