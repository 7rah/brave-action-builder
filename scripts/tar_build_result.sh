sudo rm -rf /mnt/build/out/Static/chrome.tmp*
sudo rm -rf /mnt/build/out/Static/thinlto-cache
sudo tar --use-compress-program="zstd -1 -T0" -cvpf /mnt/build/out.tar /mnt/build/out
