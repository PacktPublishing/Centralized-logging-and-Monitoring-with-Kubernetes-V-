#!/usr/bin/env bash

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.0.0-amd64.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.0.0-amd64.deb.sha512
shasum -a 512 -c elasticsearch-7.0.0-amd64.deb.sha512 
sudo dpkg -i elasticsearch-7.0.0-amd64.deb

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service
