#!/usr/bin/env bash

set -e # Stop script if error occurs.

# Install git.
sudo apt-get update
sudo apt-get install -y git

# Install go.
wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
sudo tar -C /usr/local -xzvf go1.8.linux-amd64.tar.gz
mkdir -p $HOME/go/src/github.com $HOME/go/bin $HOME/go/pkg
echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> $HOME/.bashrc
echo "export GOPATH=$HOME/go" >> $HOME/.bash_profile
echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> $HOME/.bash_profile

# Link the learnscalability projects.
ln -s /vagrant $HOME/go/src/github.com/learnscalability

# Get hugo in order to build learnscalability.com.
go get -u github.com/spf13/hugo

# Get glide for package management.
go get -u github.com/Masterminds/glide

# Install protobuf
wget https://github.com/google/protobuf/releases/download/v3.2.0/protoc-3.2.0-linux-x86_64.zip
sudo apt-get install -y unzip
mkdir -p $HOME/proto
unzip -u protoc-3.2.0-linux-x86_64.zip -d $HOME/proto
echo "export PATH=$PATH:$HOME/proto/bin" >> $HOME/.bashrc
echo "export PATH=$PATH:$HOME/proto/bin" >> $HOME/.bash_profile

# Install gRPC and go bindings for protobuf
go get -u github.com/golang/protobuf/{proto,protoc-gen-go}
go get -u google.golang.org/grpc
