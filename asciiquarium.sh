#!/bin/bash

#Script for installing Asciiquarium 

#Install dependencies.
sudo apt-get update
sudo apt-get -y install perl libcurses-perl
cd /tmp
wget http://search.cpan.org/CPAN/authors/id/K/KB/KBAUCOM/Term-Animation-2.6.tar.gz
tar -zxvf Term-Animation-2.6.tar.gz
cd Term-Animation-2.6
perl Makefile.PL && make && make test
sudo make install

#Install Asciiquarium 
mkdir /opt/asciiquarium
cd /opt/asciiquarium
wget http://www.robobunny.com/projects/asciiquarium/asciiquarium
chmod 777 asciiquarium
./asciiquarium 
