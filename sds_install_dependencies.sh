sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade;
sudo apt-get install -y --fix-missing git htop cmake python-dev vim vim-nox ack-grep curl tmux alsa-utils autocutsel pulseaudio;

# install vim dependencies
mkdir -p ~/.vim/colors;
wget https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim -O ~/.vim/colors/dracula.vim;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
mkdir -p ~/bin;
curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack && chmod 0755 ~/bin/ack;
vim +PluginInstall +qall;
pushd ~/.vim/bundle/vimproc.vim;
  make;
popd;

rm -rf setup_* && curl -O https://deb.nodesource.com/setup_8.x && sudo sh setup_8.x && rm -rf setup_*;
sudo apt-get update && sudo apt-get install -y --fix-missing nodejs;

sudo npm install -g stylelint eslint typescript;

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
