#TODO: set version in var
ART_VERSION=6.9.5
docker pull docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION
docker run --name artifactory -d -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION

# TODO: Get docker container id
# docker cp ./from-npm/ $CONTAINER_ID:/from-npm

echo set up docker license, and run `docker cp ./from-npm/ CONTAINER_ID:/from-npm`
echo then upload files from 'from-npm' folder to Artifactory, first the unscoped module and then the types scoped module.
echo then run...
echo cd my-project
echo npm i

# try with cache clean --force?