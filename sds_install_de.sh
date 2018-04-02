sudo apt-get install -y --fix-missing dmenu rxvt-unicode xclip openbox obconf xinit build-essential pkg-config xorg openbox-themes lxappearance thunar firefox;
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt;
sudo apt-get install -y libxss1 libappindicator1 libindicator7;

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome*;
rm -rf google-chrome*;

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
sudo sh -c 'echo "\n\n# Custom code" >> /etc/apt/sources.list'; 
sudo sh -c 'echo "\ndeb http://archive.getdeb.net/ubuntu zesty-getdeb apps" >> /etc/apt/sources.list'; 
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add - ;
sudo apt-get update;
sudo apt-get install -y --fix-broken;
sudo apt-get install -y --fix-missing code polybar;

wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-hinted.zip;
sudo install -d -m755 /usr/share/fonts/noto;
sudo unzip Noto-hinted.zip -d /usr/share/fonts/noto;
sudo chmod 0644 /usr/share/fonts/noto/*;
rm -rf Noto*;
fc-cache -f -v;

rm -rf ~/.themes;
git clone https://github.com/dglava/arc-openbox.git ~/.themes;

git clone https://github.com/shlinux/faenza-icon-theme.git faenza;
./faenza/INSTALL;
rm -rf faenza;