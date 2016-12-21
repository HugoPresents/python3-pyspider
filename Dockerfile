FROM ubuntu

RUN apt-get install -y python3-pip python3-dev libcurl4-openssl-dev libxml2-dev libxslt1-dev libssl-dev zlib1g-dev &&
ln -s /usr/bin/python3 /usr/bin/python &&
ln -s /usr/bin/pip3 /usr/bin/pip &&
pip install --upgrade pip &&
pip install pyspider &&
mkdir /var/htdocs

EXPOSE 5000
VOLUME /var/htdocs
