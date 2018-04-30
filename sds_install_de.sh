# prepare
rm -rf ~/.themes;

# retrieve needed packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
sudo sh -c 'echo "\n\n# Custom code" >> /etc/apt/sources.list'; 
sudo sh -c 'echo "\ndeb http://archive.getdeb.net/ubuntu zesty-getdeb apps" >> /etc/apt/sources.list'; 
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add - ;

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -;
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo add-apt-repository ppa:jtaylor/keepass;

wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip;

# finally install all
sudo apt-get update;

sudo apt-get install -y --fix-missing dmenu rxvt-unicode xclip openbox obconf xinit build-essential pkg-config xorg lxappearance nautilus nautilus-dropbox firefox libxss1 libappindicator1 libindicator7 sublime-text code polybar apt-transport-https git-gui tint2 xdotool gimp keepass2 lxinput arandr wicd wicd-gtk;
sudo dpkg -i google-chrome*;

sudo apt-get install -y --fix-broken;

# force to install afterwards
sudo apt-get install -y --fix-missing dmenu rxvt-unicode xclip openbox obconf xinit build-essential pkg-config xorg lxappearance nautilus nautilus-dropbox firefox libxss1 libappindicator1 libindicator7 sublime-text code polybar apt-transport-https git-gui tint2 xdotool gimp keepass2;
sudo dpkg -i google-chrome*;

# update alternatives
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt;

sudo install -d -m755 /usr/share/fonts/noto;
sudo unzip Noto-hinted.zip -d /usr/share/fonts/noto;
sudo chmod 0644 /usr/share/fonts/noto/*;

git clone https://github.com/dglava/arc-openbox.git ~/.themes;
git clone https://github.com/shlinux/faenza-icon-theme.git faenza;

# setup
fc-cache -f -v;
./faenza/INSTALL;

# cleanup
rm -rf Noto*;
rm -rf google-chrome*;
rm -rf faenza;
