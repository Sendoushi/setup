echo "";
echo "#######################################";
echo "# SDS: Installing dependencies";
echo "";

sh $(pwd)/sds_install_dependencies.sh;

echo "";
echo "#######################################";
echo "# SDS: Update";
echo "";

sh $(pwd)/sds_update.sh;

echo "";
echo "#######################################";
echo "# SDS: Setting up";
echo "";

sh $(pwd)/sds_setting_up.sh;

echo "" >> ~/.bashrc;
echo "# Custom code" >> ~/.bashrc;
echo "if [ -f ~/.userrc ]; then" >> ~/.bashrc;
echo "  . ~/.userrc;" >> ~/.bashrc;
echo "fi" >> ~/.bashrc;

echo "";
echo "#######################################";
echo "# SDS: Installing desktop environment";
echo "";

sh $(pwd)/sds_install_de.sh;

echo "";
echo "#######################################";
echo "# SDS: Cleaning up";
echo "";

sudo apt-get clean;
sudo apt-get autoremove;

echo "";
echo "#######################################";
echo "# SDS: Setup all done";
echo "";
