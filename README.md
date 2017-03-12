# vm

This project builds a [Vagrant](https://www.vagrantup.com/) VM to ease development for all project on [github.com/learnscalability](https://github.com/learnscalability)

## Instalation

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/docs/installation/) for your platform
2. Build the recommended directory structure:
```bash
$ mkdir -p ~/learnscalability
$ cd ~learnscalability/
$ git clone github.com/learscalability/vm
$ git clone github.com/learscalability/learnscalability.com
$ git clone github.com/learscalability/grpc-echo-service
# .... clone any other project you are interested in
```
3. Build the VM
```bash
$ cd ~/learnscalability/vm
$ vagrant up
```
This will boot up an ubuntu 14.04 vm, install golang v1.8 and other dependencies in it.
See the project specific README for what to do next.
