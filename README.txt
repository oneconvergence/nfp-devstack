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
     
       # Base mode service VM image URL (extension of the image should be .img)
       IMAGE_URLS+=
       # Public IP
       HOST_IP=
       # update to the latest patch
       GBPSERVICE_BRANCH=

    10. edit lib/nfp

       change the string 'base_mode_service_vm_v1' to the filename(without extension) of the base mode service VM image file

    11. ./stack.sh

