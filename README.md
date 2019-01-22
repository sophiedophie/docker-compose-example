# Container configuration

## Get started

1. Install sudo ```yum -y install sudo```. You need sudo to start docker.

2. Execute start.sh

- Copy this file to intiated server and run ```sudo bash start.sh```. Make sure you need to give sudo for this file.
- This includes installation of git and docker. Also, automatically clone the repostiory we need.

## Ports you are going to use

- 8080: nginx
- 3306: mysql
- 27017: mongo
- 8081: mongo-express
- 9200: elasticsearch
- 5601: kibana