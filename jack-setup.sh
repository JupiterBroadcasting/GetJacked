# configure new repos
sudo apt-get install apt-transport-https software-properties-common wget
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
sudo dpkg -i kxstudio-repos_9.5.1~kxstudio3_all.deb

# needed?
sudo apt-get install libglibmm-2.4-1v5 -y

# configure gcc5 supportc
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb
sudo dpkg -i kxstudio-repos-gcc5_9.5.1~kxstudio3_all.deb

user=$(whoami)
sudo usermod -a -G audio $user

# install jack
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install jackd2-firewire -y
sudo apt install -y jackd2 carla-git cadence non-mixer pulseaudio-module-jack mididings -y
