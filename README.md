# Dockerized Node App
This node application sits inside a docker container and was deployed to Digital Ocean using Docker-Machine  

## Requirements
* [Docker](https://www.docker.com/) installed
* [Digital Ocean Account](https://m.do.co/c/aac832dd7969) & [API Token](https://cloud.digitalocean.com/settings/api/tokens)

## Instructions
Clone and enter the repo
<pre>
git clone https://github.com/EoinTraynor/dockerized-node-app && cd dockerized-node-app
</pre>
<br>
Spin up a virtual docker host on a digital ocean server (using your API token)
<pre>
docker-machine create --driver digitalocean --digitalocean-access-token=<i>your_api_token</i> docker-deployment
</pre>
<br>
Get docker to point at our new virtual host
<pre>
docker-machine env docker-deployment
</pre>
This result will provide you with another command to configure your shell. Run this to accuratly target your virtual host
<br>
Build a new image
<pre>
docker build -t docker-deployment:dev .
</pre>
<br>
Run the docker container and expose on port 80
<pre>
docker run -d -p 80:3000 --name docker-deployment-container docker-deployment:dev
</pre>
<br>
Visit the IP address of your server in your browser
<br>
Point docker back to your local environment

* Mac:
<pre>
eval $(docker-machine env -u)
</pre>
* Windows:
<pre>
@FOR /f "tokens=*" %i IN ('docker-machine env -u') DO @%i
</pre>
<br>
Remember to destroy your digital ocean droplet to prevent getting charged for use of the server