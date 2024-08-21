FROM node:16-alpine

RUN mkdir -p /home/app

WORKDIR /home/app

# RUN npm init -y

RUN npm install -g nodemon

# RUN npm install --save express

COPY index.js .

# COPY . .

EXPOSE 3000
	
CMD ["nodemon", "-L", "/home/app/index.js"]

