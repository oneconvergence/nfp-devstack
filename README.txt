Install base mode stable/mitaka devstack with GBP.

    1. git clone https://git.openstack.org/openstack-dev/devstack -b stable/mitaka

    2. cd devstack

    3. rm -rf local.conf && wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/local.conf

    4. edit the local.conf

       HOST_IP= <devstack host ip>

    5. ./stack.sh
