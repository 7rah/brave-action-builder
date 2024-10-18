sudo fallocate -l 32G /swapfile
sudo fallocate -l 32G /mnt/swapfile

sudo chmod 600 /swapfile
sudo chmod 600 /mnt/swapfile

sudo mkswap /swapfile
sudo mkswap /mnt/swapfile

sudo swapon /swapfile
sudo swapon /mnt/swapfile