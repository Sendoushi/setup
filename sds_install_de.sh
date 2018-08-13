# prepare

# retrieve needed packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';

sudo add-apt-repository ppa:jtaylor/keepass;


# finally install all
sudo apt-get update;

sudo apt-get install -y --fix-missing xclip build-essential pkg-config firefox code apt-transport-https git-gui xdotool keepass2 ;
sudo dpkg -i google-chrome*;


# cleanup
rm -rf google-chrome*;
