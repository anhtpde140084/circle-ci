# docker pull phianhdev/react-docker:lastest
# docker stop circle-ci-fe
# docker rm circle-ci-fe
# docker run -p 8088:80 circle-ci-fe phianhdev/react-docker:lastest
#!/bin/bash
docker-compose stop
docker-compose rm -f
docker-compose pull
docker-compose up -d