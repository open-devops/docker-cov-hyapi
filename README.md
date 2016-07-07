# docker-cov-hyapi
COV Hygieia api Image for Open DevOps Pipeline

#docker pull
docker pull devopsopen/docker-cov-hyapi

#docker run : step 1
start devopsopen/docker-com-mongo in another container with name of mongo,

then use mongodb client to connect with the container and update dashboard database for hygieia api image.

the following commands are executed:

 use dashboard
 
 db.createUser({user: "db", pwd: "dbpass", roles: [{role: "readWrite", db: "dashboard"}]})

#docker run : step 2
mkdir -p logs

docker run -t -p 8080:8080 --link mongo:mongo -v logs:/hygieia/logs --name hyapi -i devopsopen/docker-cov-hyapi
