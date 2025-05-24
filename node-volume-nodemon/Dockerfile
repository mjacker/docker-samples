FROM node:16-alpine

RUN mkdir -p /home/app

WORKDIR /home/app

# RUN npm init -y

COPY package*.json ./
COPY index.js .
# COPY . .

RUN npm install 

# Nodemon
RUN npm install -g nodemon

# RUN npm install --save express

EXPOSE 3000
	
CMD ["nodemon", "-L", "/home/app/index.js"]

