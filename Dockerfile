FROM ubuntu:16.04

MAINTAINER Chris Kretler <ckretler@umich.edu>

# Install ruby and necessary libraries for building thin.
RUN apt-get update \ 
	&& apt-get install -y ruby ruby-rack ruby-dev build-essential

# Install thin.
RUN gem install -N thin

# Expose the port on which the app will run.
EXPOSE 3001

# Set a sample environmental variable
ENV ENVVAR howdy

# Clean up build reqs that aren't necessary for deployment.
RUN apt-get remove -y build-essential ruby-dev \
	&& apt-get autoremove -y
	
# Create place for app to run from
WORKDIR /app/
COPY . /app/

CMD thin start -R config.ru -p 3001