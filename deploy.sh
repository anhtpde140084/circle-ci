cd `dirname $BASH_SOURCE`

docker pull phianhdev/react-docker:lastest
docker stop circle-ci-fe
docker rm circle-ci-fe
docker run -d --name circle-ci-fe phianhdev/react-docker:lastest

cd - > /dev/null