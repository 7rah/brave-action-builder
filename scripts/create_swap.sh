sudo fallocate -l 22G /swapfile
sudo fallocate -l 42G /mnt/swapfile-new

sudo chmod 600 /swapfile
sudo chmod 600 /mnt/swapfile-new

sudo mkswap /swapfile
sudo mkswap /mnt/swapfile-new

sudo swapon /swapfile
sudo swapon /mnt/swapfile-new