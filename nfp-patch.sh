#!/usr/bin/env bash
set -x
rm -rf local.*
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/liberty/local.conf
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/liberty/lib/nfp -P lib/
sed -i 's/source $TOP_DIR\/lib\/dstat/source $TOP_DIR\/lib\/dstat\nsource $TOP_DIR\/lib\/nfp/g' stack.sh
sed -i "s/install_gbpservice/install_gbpservice\nconfigure_nfp_firewall/g" stack.sh
sed -i 's/# Restore\/close logging file descriptors/nfp_setup $TOP_DIR $ConfiguratorQcow2Image $VyosQcow2Image\n# Restore\/close logging file descriptors/g' stack.sh

