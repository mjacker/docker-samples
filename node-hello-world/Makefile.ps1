docker build -t hello-web .
docker container create --name cont-hello-web -p3000:3000 hello-web
