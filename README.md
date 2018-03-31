# Ubuntu custom

1. Install ubuntu server
  - 10gb minimum, 30gb recommended for work
  - Install with:
  - Samba
  - SSH
2. Run code
  ```bash
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade; \
  sudo apt-get install -y --fix-missing git ;\
  git clone https://github.com/Sendoushi/setup.git ~ ;\
  sh ~/sds_install.sh
  ``` 
