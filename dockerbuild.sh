export DOCKER_ID_USER="chennaraov"
export DOCKER_IMAGE="tomcat-web"
chmod 700 dockerbuild.sh
mvn clean install
docker build -t tomcat-web .
docker tag tomcat-web:latest $DOCKER_ID_USER/$DOCKER_IMAGE:latest
docker login -u $DOCKER_ID_USER -p $DOCKER_PW
docker push $DOCKER_ID_USER/$DOCKER_IMAGE:latest
#docker images -qa | xargs docker rmi -f
