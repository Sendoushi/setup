sudo apt-get install -y --fix-missing dmenu rxvt-unicode xclip openbox obconf xinit build-essential pkg-config xorg openbox-themes lxappearance thunar;
sudo update-alternatives --set x-terminal-emulator /usr/bin/urxvt;
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';
sudo apt-get update;
sudo apt-get install -y --fix-missing code;
