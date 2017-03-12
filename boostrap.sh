#!/usr/bin/env bash

set -e # stop script if error occurs.

# Install git
#sudo apt-get update
#sudo apt-get install -y git

# install go.
#wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzvf go1.8.linux-amd64.tar.gz
#mkdir -p $HOME/go/src/github.com $HOME/go/bin $HOME/go/pkg
#echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
#echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> $HOME/.bashrc
#echo "export GOPATH=$HOME/go" >> $HOME/.bash_profile
#echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> $HOME/.bash_profile

# link the learnscalability projects
ln -s /vagrant $HOME/go/src/github.com/learnscalability

# Get hugo in order to build learnscalability.com
#go get -u github.com/spf13/hugo

# Get glide for package management
#go get -u github.com/Masterminds/glide
