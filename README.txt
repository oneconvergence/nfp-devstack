Install stable/liberty devstack with GBP.

    1. git clone https://git.openstack.org/openstack-dev/devstack -b stable/liberty

    2. cd devstack

    3. wget https://raw.githubusercontent.com/group-policy/gbp-devstack/liberty/gbp-patch.sh

    4. chmod +x gbp-patch.sh

    5. ./gbp-patch.sh
  
    6. wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/liberty/nfp-patch.sh

    7. chmod +x nfp-patch.sh

    8. ./nfp-patch.sh 

    9.  edit local.conf
        copy the service images(configurator,vyos) from 192.168.100.135 to local machine
        images_path=/home/stack/liberty_service_images

        edit the following parameters in local.conf

        ConfiguratorQcow2Image=<configurator image path>
        VyosQcow2Image=<vyos image path>
        EXT_NET_NAME=ext-net
        EXT_NET_SUBNET_NAME=ext-net-subnet
        EXT_NET_GATEWAY=192.168.102.254
        EXT_NET_ALLOCATION_POOL_START=192.168.102.86
        EXT_NET_ALLOCATION_POOL_END=192.168.102.90
        EXT_NET_CIDR=192.168.102.0
        EXT_NET_MASK=24
        HOST_IP=192.168.100.107

    10. ./stack.sh



