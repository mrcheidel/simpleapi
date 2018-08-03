FROM ubuntu

MAINTAINER Claudio Heidel "claudio.heidel@gft.com"

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y wget && \
  apt-get install -y curl && \
  apt-get install -y nano && \
  apt-get install -y npm && \
  apt-get install -y git

RUN curl -sL https://deb.nodesource.com/setup_9.x  && \
  apt-get install -y nodejs 

# Clone the simpleapi github repo
RUN \ 
	cd /home && \
	git clone https://github.com/mrcheidel/simpleapi.git && \
	cd /home/simpleapi && \
	npm install 


# Expose port 3000 to the host
EXPOSE 3000

# Set the current work directory
WORKDIR /home/simpleapi

# Run simpleapi-server
ENTRYPOINT ["node", "app.js"] 
