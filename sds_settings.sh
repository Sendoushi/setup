mkdir -p ~/npm;
mkdir -p ~/work/src;
rm -rf ~/go;
ln -s ~/work ~/go;
mkdir -p ~/.config;
mkdir -p ~/.config/Code/User;
mkdir -p ~/.config/sublime-text-3;
mkdir -p ~/.config/tint2;

rm -rf ~/.gitconfig;
rm -rf ~/.gitignore_global;
rm -rf ~/.userrc;
rm -rf ~/.tmux.conf;
rm -rf ~/.npmrc;
rm -rf ~/.vimrc;
rm -rf ~/.Xresources;
rm -rf ~/.xinitrc;
rm -rf ~/.config/openbox;
rm -rf ~/.config/polybar;
rm -rf ~/.gtkrc-2.0;

cp .gitconfig ~/.gitconfig;
cp .gitignore_global ~/.gitignore_global;
cp .userrc ~/.userrc;
cp .tmux.conf ~/.tmux.conf;
cp .npmrc ~/.npmrc;
cp .vimrc ~/.vimrc;
cp .Xresources ~/.Xresources;
cp .xinitrc ~/.xinitrc;
cp .gtkrc-2.0 ~/.gtkrc-2.0;
cp -rf openbox/* ~/.config/openbox/;
cp -rf polybar/* ~/.config/polybar/;
cp -rf Code/User/* ~/.config/Code/User/;
cp -rf vscode/* ~/.vscode/;
cp -rf sublime-text-3/* ~/.config/sublime-text-3/;
cp -rf tint2/* ~/.config/tint2/;
