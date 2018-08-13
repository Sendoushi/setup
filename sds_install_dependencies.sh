sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade;
sudo apt-get install -y --fix-missing git htop cmake python-dev vim vim-nox ack-grep curl tmux autocutsel;

rm -rf setup_* && curl -O https://deb.nodesource.com/setup_8.x && sudo sh setup_8.x && rm -rf setup_*;
sudo apt-get update && sudo apt-get install -y --fix-missing nodejs;

sudo npm install -g stylelint eslint typescript;

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
sudo sh -c 'echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list';

sudo apt-get -y update && sudo apt-get -y upgrade;

sudo apt-get install -y mongodb-org;

sudo apt-get install -y php7* php-xml php-mcrypt mysql-server php-mysql;

# install vim dependencies
mkdir -p ~/.vim/colors;
sudo apt-get install -y ctags python-dev python3-dev;
wget https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim -O ~/.vim/colors/dracula.vim;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
mkdir -p ~/bin;
curl https://beyondgrep.com/ack-2.22-single-file > ~/bin/ack && chmod 0755 ~/bin/ack;
~/.vim/bundle/YouCompleteMe/install.py --js-completer --clang-completer --rust-completer --go-completer;
pushd ~/.vim/bundle/vimproc.vim;
  make;
popd;

# instal grv
wget -O grv https://github.com/rgburke/grv/releases/download/v0.1.3/grv_v0.1.3_linux64;
chmod +x ./grv;
mkdir -p ~/bin;
mv grv ~/bin/grv;
