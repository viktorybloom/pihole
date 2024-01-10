# pihole
Docker setup for pihole using macvlan container mapping.
Currently setup for use in Ubuntu Server.

https://github.com/pi-hole/docker-pi-hole

### Prerequisites

If you do not have additional dns services (eg. quad 9) held in `/etc/netplan/*.yaml`, follow below steps.  

`./prerequisite.sh`

For ubuntu server - make sure you are updated and restarted (ensure no mismatched kernels), and edit `run/systemd/resolve/stub-resolv.conf` adding `nameserver 9.9.9.9` and then running `sudo resolvconf -u` before running docker image. This will ensure that dns will remain while pihole takes over dns, while downloading and building image.

![PiHole Docker Setup](ref/setup.png)

