#!/usr/bin/env bash

set -x

rm -rf local.*
#wget https://raw.githubusercontent.com/openstack/gbp-devstack/liberty/local.conf
#wget https://raw.githubusercontent.com/openstack/gbp-devstack/liberty/lib/nfp -P lib/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/liberty/local.conf
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/liberty/lib/nfp -P lib/

sed -i 's/source $TOP_DIR\/lib\/dstat/source $TOP_DIR\/lib\/dstat\nsource $TOP_DIR\/lib\/nfp/g' stack.sh
sed -i "s/install_gbpservice/install_gbpservice\n[[ $NFP_DEVSTACK_MODE = advanced ]] && configure_nfp_loadbalancer\n[[ $NFP_DEVSTACK_MODE = advanced ]] && configure_nfp_vpn\n/g" stack.sh
sed -i "s/start_neutron_service_and_check/[[ $NFP_DEVSTACK_MODE = advanced ]] && configure_nfp_firewall\n    start_neutron_service_and_check/g" stack.sh
sed -i 's/# Restore\/close logging file descriptors/nfp_setup\n# Restore\/close logging file descriptors/g' stack.sh

