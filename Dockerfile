FROM ubuntu:14.04
MAINTAINER Frank Lemanschik @ DIREKTSPEED Europe <frank@dspeed.eu>

# invalidate the Cache and update the apt list 
# RUN echo currentsMillies > /created \
RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get install -y curl wget git ca-certificates \
 && chmod +x /usr/bin/nave \
 && apt-get -y clean
VOLUME /app
WORKDIR /app
ENV HOME APP
ADD nave /usr/bin/nave
ENTRYPOINT ["nave", "use", "stable"]
CMD ["npm"]
