# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Every Vagrant development environment requires a bo. We'll use Ubuntu 14.04
  config.vm.box = "ubuntu/trusty64"

  # Enable provisioning with a shell script.
  config.vm.provision "shell", inline: <<-SHELL
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
  SHELL
end
