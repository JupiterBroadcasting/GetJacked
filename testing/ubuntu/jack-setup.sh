#!/bin/bash
set -ex
export DEBIAN_FRONTEND=noninteractive

# append user to audio group
user=$(whoami)
usermod -aG audio $user

# install some needed depends
apt-get update
apt-get install \
  apt-transport-https \
  software-properties-common \
  wget \
  libglibmm-2.4-1v5 -y


wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
dpkg -i kxstudio-repos_9.5.1~kxstudio3_all.deb

# configure gcc5 supportc
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
dpkg -i kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb

# install jack
apt-get update
apt install jackd2-firewire -y

apt install \
    jackd2 \
    carla-git \
    cadence \
    non-mixer \
    pulseaudio-module-jack \
    mididings -y
