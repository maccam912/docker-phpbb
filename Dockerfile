FROM phusion/baseimage
MAINTAINER Matt Koski <maccam912@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install sqlite phpbb3 -y

#RUN mkdir /Development

#RUN cd /Development && wget https://www.phpbb.com/files/release/phpBB-3.1.1.zip && unzip /Development/*.zip && rm /Development/*.zip
