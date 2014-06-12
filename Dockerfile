FROM ubuntu:14.04
RUN apt-get -y update
RUN apt-get install -y curl wget git npm
RUN wget https://raw.githubusercontent.com/frank-dspeed/nave/master/nave.sh && chmod +x nave.sh
RUN ./nave.sh install stable
RUN apt-get -y clean
