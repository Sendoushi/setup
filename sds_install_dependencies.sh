sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade;
sudo apt-get install -y --fix-missing git htop cmake python-dev vim vim-nox curl tmux;

rm -rf setup_* && curl -O https://deb.nodesource.com/setup_8.x && sudo sh setup_8.x && rm -rf setup_*;
sudo apt-get update && sudo apt-get install -y --fix-missing nodejs;

# TODO: Go not working for some reason
# rm -rf go1*;
# curl -O https://dl.google.com/go/go1.10.linux-amd64.tar.gz;
# tar xvf go1*.tar.gz;
# sudo rm -rf /usr/local/go;
# sudo mv go /usr/local;
# rm -rf go1*;

curl -sf -L https://static.rust-lang.org/rustup.sh | sh;

sudo apt-get -y update && sudo apt-get -y upgrade;
