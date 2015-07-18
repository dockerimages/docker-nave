FROM ubuntu:14.04
MAINTAINER Frank Lemanschik @ DIREKTSPEED Europe <frank@dspeed.eu>

# invalidate the Cache and update the apt list 
# RUN echo currentsMillies > /created \
RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get install -y \
  curl wget git \
  ca-certificates \
  python build-essential \
 && apt-get -y clean
VOLUME /app
WORKDIR /app
ENV HOME /app
ADD nave /usr/bin/nave
RUN chmod +x /usr/bin/nave
ADD https://github.com/DIREKTSPEED-LTD/s6-init/archive/master.tar /
ENTRYPOINT ["/usr/bin/s6-svscan","/etc/s6"]
CMD []
