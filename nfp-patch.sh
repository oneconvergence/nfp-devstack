#!/usr/bin/env bash
set -x
rm -rf local.*
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/local.conf
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/lib/nfp -p lib/
sed -i 's/source $TOP_DIR\/lib\/dstat/source $TOP_DIR\/lib\/dstat\nsource $TOP_DIR\/lib\/nfp/g' stack.sh
sed -i "s/install_gbpservice/install_gbpservice\nconfigure_nfp_firewall/g" stack.sh
sed -i 's/# Restore\/close logging file descriptors/nfp_setup $TOP_DIR $ConfiguratorQcow2Image $VyosQcow2Image\n# Restore\/close logging file descriptors/g' stack.sh

sed -i "s/export OS_USER_DOMAIN_ID=default/#export OS_USER_DOMAIN_ID=default/g"  stack.sh
sed -i "s/export OS_PROJECT_DOMAIN_ID=default/#export OS_PROJECT_DOMAIN_ID=default/g"  stack.sh



