FROM node:18-alpine 

# Create app directory
WORKDIR /usr/src/app

# Copy to workdir 
COPY . /usr/src/app

# rename configfile 
COPY ./default.config.json /usr/src/app/config.js


# Installing the dependencies
RUN npm install

CMD [ "node", "index.js" ]
