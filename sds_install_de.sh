echo "########################";
echo "# SDS: Installing desktop environment";
# sudo apt-get install -y --fix-missing dmenu rxvt-unicode xclip;
# sudo apt-get -y update && sudo apt-get -y upgrade;
echo "########################";
echo "# SDS: Cleaning up";
sudo apt-get clean;
sudo apt-get autoremove;