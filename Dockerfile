# Create a node image base
FROM node:6

# Clone the repo from github
RUN git clone https://github.com/EoinTraynor/dockerized-node-app

# Change the working directory
WORKDIR /dockerized-node-app

# install node modules
RUN npm install

# Expose port
EXPOSE 3000

# Run application
CMD ["npm", "start"]
