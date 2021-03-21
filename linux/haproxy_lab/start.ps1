# configure host-only subnet address in virtualbox
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig vboxnet0 --ip 172.28.128.1 --netmask 255.255.255.0
VBoxManage dhcpserver modify --ifname vboxnet0 --ip 172.28.128.1 --netmask 255.255.255.0 --lowerip 172.28.128.100 --upperip 172.28.128.250

# add box
vagrant box add hashicorp/precise32 https://vagrantcloud.com/hashicorp/boxes/precise32/versions/1.0.0/providers/virtualbox.box

# run the lab
vagrant up