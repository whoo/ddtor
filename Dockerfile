FROM debian:bullseye-20240423
MAINTAINER Domi d<errierdo@gmail.com>

ADD script.sh	/root/
RUN /root/script.sh

USER tor
#CMD /bin/tor -f /home/tor/torrc

WORKDIR	/home/tor	
ENTRYPOINT tor -f torrc
EXPOSE	9050

ADD Dockerfile	/root/
ADD torrc	/root/
ADD torrc	/home/tor/

