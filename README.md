[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?maxAge=2592000)](https://hub.docker.com/r/devopsopen/docker-cov-hyapi/)

# Hygieia API Server
COV Hygieia api Image for Open DevOps Pipeline

#docker pull
docker pull devopsopen/docker-cov-hyapi

#docker run : step 1
start devopsopen/docker-com-mongo in another container with name of mongo,

docker run -d -p 27017:27017 --name mongo devopsopen/docker-com-mongo

#docker run : step 2
mkdir -p logs

docker run -t -p 8080:8080 --link mongo:mongo -v logs:/hygieia/logs --name hyapi -i devopsopen/docker-cov-hyapi

the following commands will be executed automatically:

use mongodb client to connect with the container and update dashboard database for hygieia api image.

 use dashboard
 
 db.createUser({user: "db", pwd: "dbpass", roles: [{role: "readWrite", db: "dashboard"}]})
