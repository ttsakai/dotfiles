#!/bin/bash
# Note: run as a super user
version=1.17

wget https://golang.org/dl/go${version}.linux-amd64.tar.gz 

tar -C /usr/local -xzf go${version}.linux-amd64.tar.gz
rm -f go${version}.linux-amd64.tar.gz

