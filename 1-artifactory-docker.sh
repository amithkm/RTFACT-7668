ART_VERSION=7.31.10
CONTAINER_NAME=RTFACT-7668_$ART_VERSION
echo pulling...
docker pull docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION
echo running...
# docker run --name $CONTAINER_NAME -d -v $(pwd)/artifactory:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION
docker run --name $CONTAINER_NAME -d -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION

echo copying...
docker cp ./from-npm/ $CONTAINER_NAME:/
