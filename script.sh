#!/bin/bash


#add Tor Repository
echo "deb http://deb.torproject.org/torproject.org	jessie main" >  /etc/apt/sources.list.d/tor.list
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

#install Package 
apt-get update
apt-get -y install openssl tor

#add user
useradd tor -d /home/tor -m

