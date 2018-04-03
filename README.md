# Ubuntu custom

1. Install ubuntu server
  - 10gb minimum, 30gb recommended for work
  - Install with SSH
2. Run code 
  ```bash
  sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade; \
  sudo apt-get install -y --fix-missing git ;\
  git clone https://github.com/Sendoushi/setup.git ~/setup ;\
  cd setup; \
  sh sds_install.sh; \
  cd ../;
  ``` 

### VirtualBox

#### VBoxGuestAdditions. 

In case you don't have it already...

```bash
# Start the Ubuntu Server VM and insert the Guest Additions CD image
sudo mount /dev/cdrom /media/cdrom
sudo apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)
sudo /media/cdrom/VBoxLinuxAdditions.run
sudo adduser <username> vboxsf
```
