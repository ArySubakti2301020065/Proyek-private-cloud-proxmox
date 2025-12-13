apt update
apt install nfs-kernel-server -y
mkdir -p /mnt/nfs-share
chown -R nobody:nogroup /mnt/nfs-share
systemctl enable nfs-server
systemctl restart nfs-server
