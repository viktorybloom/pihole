# Update resolve with 9s dns to allow pihole to download while taking over dns

echo "nameserver 9.9.9.9" | sudo tee -a /run/systemd/resolve/stub-resolv.conf > /dev/null 

sudo resolvconf -u

