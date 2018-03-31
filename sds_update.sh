git pull origin master;

mkdir -p ~/npm;
mkdir -p ~/work/src;
rm -rf ~/go;
ln -s ~/work ~/go;
mkdir -p ~/.config;

rm -rf ~/.gitconfig;
rm -rf ~/.gitignore_global;
rm -rf ~/.userrc;
rm -rf ~/.tmux.conf;
rm -rf ~/.npmrc;
rm -rf ~/.vimrc;
rm -rf ~/.Xresources;
rm -rf ~/.xinitrc;
rm -rf ~/.config/openbox;
sudo rm -rf /usr/lib/urxvt/perl/clipboard;

cp .gitconfig ~/.gitconfig;
cp .gitignore_global ~/.gitignore_global;
cp .userrc ~/.userrc;
cp .tmux.conf ~/.tmux.conf;
cp .npmrc ~/.npmrc;
cp .vimrc ~/.vimrc;
cp .Xresources ~/.Xresources;
cp .xinitrc ~/.xinitrc;
sudo cp perlclipboard /usr/lib/urxvt/perl/clipboard;
cp -rf openbox ~/.config/openbox;
