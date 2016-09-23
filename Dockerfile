FROM alpine:3.3
#FROM ubuntu:latest

MAINTAINER Chris Kretler <ckretler@umich.edu>

# Install ruby
RUN apk add --no-cache ruby ruby-rack
#RUN apt-get update \ 
#	&& apt-get install -y ruby ruby-rack

RUN gem install -N rack-rewrite rack-cache

# create place for app to run from
WORKDIR /app/
COPY . /app/

RUN mkdir rack && chmod 664 rack

# expose the port on which the app will run.
EXPOSE 8080

CMD rackup --host 0.0.0.0 -p 8080
#CMD /bin/sh
