#
# Simple stable secure River5 Container
# 


FROM node:alpine
# Create app directory
WORKDIR /usr/src/river5App

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


RUN npm install --only=production
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 1337
EXPOSE 1338

