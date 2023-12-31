FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copying all the files from your file system to container file system
COPY workflow-actions/package.json .

# install all dependencies
RUN npm install

# copy oter files as well
COPY workflow-actions/ .

EXPOSE 3000

# command to run when intantiate an image
CMD npm start