FROM ubuntu:20.04
RUN apt-get update && apt-get -y install git htop vim python3 python3-pip


COPY requirements.txt ./requirements.txt

RUN \
pip3 install -r requirements.txt

WORKDIR /root/
	ENV LC_ALL=C.UTF-8
	ENV LANG=C.UTF-8


CMD ["bash"]
