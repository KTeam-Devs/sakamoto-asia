# Fetching the latest node image on apline linux
FROM node:alpine

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /Sakamoto

# Installing dependencies
COPY ./package.json /Sakamoto
RUN npm install

# Copying all the files in our project
COPY . .

# Starting our application
CMD npm start
