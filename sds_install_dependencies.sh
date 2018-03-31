sudo apt-get install -y --fix-missing git htop cmake python-dev vim vim-nox curl tmux;
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash - ;
sudo apt-get update;
sudo apt-get install -y --fix-missing nodejs;
rm -rf go1.10.linux-amd64.tar.gz && curl -O https://dl.google.com/go/go1.10.linux-amd64.tar.gz && tar xvf go1.10.linux-amd64.tar.gz && sudo rm -rf /usr/local/go && sudo mv go /usr/local && rm -rf go1.10.linux-amd64.tar.gz;
curl -sf -L https://static.rust-lang.org/rustup.sh | sh;
sudo apt-get -y update && sudo apt-get -y upgrade;