FROM fedora
#this will be base image
MAINTAINER gul
#devinfo
ARG web=httpd
#this variable web willnot b present in container
ENV server=$web
ENV color=black
#all env variables will be present in containers
RUN yum install $server -y
#installing httpd webserver as default
WORKDIR /opt
#it will be changing current directory in the container
COPY . .
#it will copy all the data to docker image
EXPOSE 80
#exposing port in container
ENTRYPOINT ["/bin/bash","/opt/entrypoint.sh"]
