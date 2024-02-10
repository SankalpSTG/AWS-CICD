Build image
docker build . -t <<IMAGE_NAME>>

Run container
docker run --name <<CONTAINER_NAME>>

Run container using volumes
docker run -v <<ABSOLUTE_PATH_OF_PROJECT>>:/usr/app -v /usr/app -it -d --name <<CONTAINER_NAME>> <<IMAGE_NAME>> 