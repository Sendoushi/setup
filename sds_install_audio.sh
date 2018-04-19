# prepare

# retrieve needed packages
sudo apt-get install -y apt-transport-https software-properties-common wget libglibmm-2.4-1v5;

# finally install all
sudo apt-get update;
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.5.1~kxstudio3_all.deb
sudo dpkg -i kxstudio*;
rm -rf kxstudio3*
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos-gcc5_9.5.1~kxstudios3_all.deb
rm -rf kxstudio3*

sudo apt-get install -y --fix-missing ardour pulseaudio pavucontrol cadence jack-tools ant qjackctl pulseaudio-module-jack;

# update alternatives

# setup

# cleanup
