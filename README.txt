Install base mode stable/mitaka devstack with GBP.

    1. git clone https://git.openstack.org/openstack-dev/devstack -b stable/mitaka

    2. cd devstack

    3. wget https://raw.githubusercontent.com/group-policy/gbp-devstack/master/gbp-patch.sh

    4. chmod +x gbp-patch.sh

    5. ./gbp-patch.sh
  
    6. wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/nfp-patch.sh

    7. chmod +x nfp-patch.sh

    8. ./nfp-patch.sh 

    9. edit the local.conf
      
       HOST_IP=

    10. ./stack.sh



