sh sds_install_dependencies.sh; \
sh sds_update.sh; \
sh sds_setting_up.sh; \
echo "" >> .bashrc; \
echo "# Custom code" >> .bashrc; \
echo "if [ -f  ~/.userrc]; then" >> .bashrc; \
echo "  . ~/.userrc;" >> .bashrc; \
echo "fi" >> .bashrc; \
sh sds_install_de.sh; \
echo "########################"; \
echo "# SDS: Setup all done";