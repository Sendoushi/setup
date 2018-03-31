echo "#######################################";
echo "# SDS: Installing dependencies";
sh $(pwd)/sds_install_dependencies.sh;

echo "#######################################";
echo "# SDS: Update";
sh $(pwd)/sds_update.sh;

echo "#######################################";
echo "# SDS: Setting up";
sh $(pwd)/sds_setting_up.sh;

echo "" >> ~/.bashrc;
echo "# Custom code" >> ~/.bashrc;
echo "if [ -f  ~/.userrc]; then" >> ~/.bashrc;
echo "  . ~/.userrc;" >> ~/.bashrc;
echo "fi" >> ~/.bashrc;

echo "#######################################";
echo "# SDS: Installing desktop environment";
sh $(pwd)/sds_install_de.sh;

echo "#######################################";
echo "# SDS: Cleaning up";
sudo apt-get clean;
sudo apt-get autoremove;

echo "#######################################";
echo "# SDS: Setup all done";