FROM dockerimages/ubuntu-14.04
MAINTAINER Frank Lemanschik @ Direkt SPEED Europe <frank@dspeed.eu>
ADD nave /nave
# invalidate the Cache and update the apt list 
RUN echo currentsMillies > /created \
 && apt-get -y update \
 && apt-get install -y curl wget git \
 && chmod +x nave.sh \
 && apt-get -y clean
 && ./nave install stable
CMD ./nave use stable
