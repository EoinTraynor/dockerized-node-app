## Dockerized Node App
This node application sits inside a docker container and was deployed to Digital Ocean using Docker-Machine  

### Requirements
- Docker & Docker-Machine
- Digital Ocean account & API key

### Instructions
git clone https://github.com/EoinTraynor/dockerized-node-app && cd dockerized-node-app

- docker-machine create --driver digitalocean --digitalocean-access-token=aa9399a2175a93b17b1c86c807e08d3fc4b79876545432a629602f61cf6ccd6b docker-deployment
- eval $(docker-machine env docker-deployment)
- docker build -t docker-deployment:dev .
- docker run -d -p 80:3000 --name docker-deployment-container docker-deployment:dev
- visit ip
- eval $(docker-machine env -u)
