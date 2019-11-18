#TODO: set version in var
ART_VERSION=6.9.5
CONTAINER_NAME=RTFACT-7668_$ART_VERSION
echo pulling...
docker pull docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION
echo running...
docker run --name $CONTAINER_NAME -d -p 8081:8081 docker.bintray.io/jfrog/artifactory-pro:$ART_VERSION

# TODO: Get docker container id
echo copying...
docker cp ./from-npm/ $CONTAINER_NAME:/

echo
echo Completed! Now follow these manual steps:
echo - browse to http://localhost:8081/artifactory and:
echo   - if you get an Apache Tomcat 404, run "docker restart $CONTAINER_NAME"
echo   - set up docker license 
echo   - go to 'Admin > Import/Export > Import'
echo   - browse to files and select '/from-npm/no-namespace' 
echo   - do the same for '/from-npm/types-namespace'
echo - in the host:
echo   - cd my-project
echo   - npm i

# try with cache clean --force?