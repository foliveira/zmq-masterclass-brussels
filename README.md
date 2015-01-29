# zmq-masterclass-brussels
Development environment for the ZMQ Masterclass in Brussels

## How?

* [Install Vagrant](http://docs.vagrantup.com/v2/installation/index.html)
* Clone this repo into your machine
* Just ```vagrant up``` on your local repository

## What?

When you ```vagrant up``` if you don't have the required Vagrant box it should be downloaded and afterwards the following shell script is ran as a provisiong script:

```    
  mkdir -p ~/workshop && cd _$
  git clone git://github.com/zeromq/libzmq.git
  git clone git://github.com/zeromq/czmq.git
  git clone git://github.com/zeromq/zyre.git
  git clone git://github.com/edgenet/hydra.git
  for project in libzmq czmq zyre hydra; do
    cd $project
    ./autogen.sh && ./configure && make check
    sudo make install  && ldconfig
    cd ..
  done
```
