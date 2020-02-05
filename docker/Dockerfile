FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y wget
RUN mkdir /app
WORKDIR /app
RUN wget -q https://github.com/Cibiv/IQ-TREE/releases/download/v1.6.12/iqtree-1.6.12-Linux.tar.gz && tar xvf iqtree-1.6.12-Linux.tar.gz && cp iqtree-1.6.12-Linux/bin/iqtree /usr/local/bin && rm -rf iqtree*

# Run when the container launches
CMD ["iqtree"]
