## Dockerized Node App

git clone https://github.com/EoinTraynor/dockerized-node-app cd dockerized-node-app
docker build -t docker-deployment:dev .
docker run -d -p 3000:3000 --name docker-deployment-container docker-deployment:dev
