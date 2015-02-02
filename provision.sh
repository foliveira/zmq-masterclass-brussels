sudo apt-get install git build-essential -y &&
mkdir -p ~/workshop && cd _$ &&
git clone git://github.com/zeromq/libzmq.git &&
git clone git://github.com/zeromq/czmq.git &&
git clone git://github.com/zeromq/zyre.git &&
git clone git://github.com/edgenet/hydra.git &&
for project in libzmq czmq zyre hydra; do
  cd $project &&
  ./autogen.sh && ./configure && make check &&
  sudo make install  && ldconfig
  cd ..
done
