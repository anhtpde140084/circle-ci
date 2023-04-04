cd `dirname $BASH_SOURCE`

docker stop circle-ci-fe
docker rm circle-ci-fe
docker pull phianhdev/react-docker:lastest
docker-compose up -d

cd - > /dev/null
