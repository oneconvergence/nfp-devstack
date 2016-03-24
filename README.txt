Install mitaka devstack with GBP.

    1. git clone https://git.openstack.org/openstack-dev/devstack -b master

    2. cd devstack

    3. wget https://raw.githubusercontent.com/group-policy/gbp-devstack/master/gbp-patch.sh

    4. chmod +x gbp-patch.sh

    5. ./gbp-patch.sh
  
    6. wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/nfp-patch.sh

    7. chmod +x nfp-patch.sh

    8. ./nfp-patch.sh 

    9. edit the local.conf
      
       copy the service images from 192.168.100.135 to lacal machine
       image_path=/home/stack/service_images

       edit the following things

       ConfiguratorQcow2Image=<configurator image path>
       VyosQcow2Image=<vyos image path>
       EXT_NET_NAME=ext-net
       EXT_NET_SUBNET_NAME=ext-net-subnet
       EXT_NET_GATEWAY=192.168.102.254
       EXT_NET_ALLOCATION_POOL_START=192.168.102.81
       EXT_NET_ALLOCATION_POOL_END=192.168.102.90
       EXT_NET_CIDR=192.168.102.0
       EXT_NET_MASK=24
       HOST_IP=

    10. ./stack.sh



