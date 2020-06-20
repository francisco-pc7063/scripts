#!/bin/bash

sudo apt -y install qemu-kvm libvirt-daemon bridge-utils virtinst libvirt-daemon-system virt-top libguestfs-tools libosinfo-bin  qemu-system virt-manager

sudo modprobe vhost_net

sudo adduser `id -nu` libvirt
sudo adduser `id -nu` kvm
