FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get install -y curl wget git
ADD nave.sh /nave.sh
RUN chmod +x nave.sh
RUN ./nave.sh install stable
RUN apt-get -y clean
# start your container from here with ./nave.sh use stable npm
