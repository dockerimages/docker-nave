FROM ubuntu:14.04
MAINTAINER Direkt SPEED

# invalidate the Cache and update the apt list 
RUN echo currentsMillies
RUN apt-get -y update
# rest that can be cached i don't care
RUN apt-get install -y curl wget git
ADD nave.sh /nave.sh
RUN chmod +x nave.sh
RUN ./nave.sh install stable
RUN apt-get -y clean
# start your container from here with ./nave.sh use stable npm
