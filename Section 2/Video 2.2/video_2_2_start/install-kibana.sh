#!/usr/bin/env bash

wget https://artifacts.elastic.co/downloads/kibana/kibana-7.0.0-amd64.deb
shasum -a 512 kibana-7.0.0-amd64.deb 
sudo dpkg -i kibana-7.0.0-amd64.deb

sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
sudo systemctl start kibana.service
