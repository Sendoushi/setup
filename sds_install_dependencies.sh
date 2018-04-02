sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade;
sudo apt-get install -y --fix-missing git htop cmake python-dev vim vim-nox curl tmux alsa-utils autocutsel pulseaudio;

rm -rf setup_* && curl -O https://deb.nodesource.com/setup_8.x && sudo sh setup_8.x && rm -rf setup_*;
sudo apt-get update && sudo apt-get install -y --fix-missing nodejs;

rm -rf go1*;
curl -O https://dl.google.com/go/go1.10.linux-amd64.tar.gz;
tar xvf go1*.tar.gz;
sudo rm -rf /usr/local/go;
sudo mv go /usr/local;
rm -rf go1*;

curl -sf -L https://static.rust-lang.org/rustup.sh | sh;

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
sudo sh -c 'echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list';

sudo apt-get -y update && sudo apt-get -y upgrade;

sudo apt-get install -y mongodb-org;
