# pihole
Docker setup for pihole using macvlan container mapping.
Currently setup for use in Ubuntu Server - see https://github.com/viktorybloom/rpi-enable-eth0-ubuntu-server for setup on RPi (w/eth0).

https://github.com/pi-hole/docker-pi-hole

### Prerequisites

links to https://github.com/viktorybloom/docker_network

If you do not have additional dns services (eg. quad 9) held in `/etc/netplan/*.yaml`, follow below steps.  

`./prerequisite.sh`

For ubuntu server - make sure you are updated and restarted (ensure no mismatched kernels), and edit `run/systemd/resolve/stub-resolv.conf` adding `nameserver 9.9.9.9` and then running `sudo resolvconf -u` before running docker image. This will ensure that dns will remain while pihole takes over dns, while downloading and building image.

log in via `10.9.8.149/admin`
