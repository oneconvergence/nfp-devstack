#!/usr/bin/env bash
set -x
rm -rf local.*
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/local.conf
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/lib/nfp -P lib/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/fw.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/fw_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/lb.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/lb_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/fw_lb.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/fw_lb_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/vpn.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/vpn_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/templates/fw_template.yml -P exercises/nfp/templates/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/templates/vpn.template -P exercises/nfp/templates/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/master/exercises/templates/haproxy.template -P exercises/nfp/templates/
sed -i 's/source $TOP_DIR\/lib\/dstat/source $TOP_DIR\/lib\/dstat\nsource $TOP_DIR\/lib\/nfp/g' stack.sh
sed -i "s/install_gbpservice/install_gbpservice\nconfigure_nfp_loadbalancer/g" stack.sh
sed -i "s/start_neutron_service_and_check/configure_nfp_firewall\n    start_neutron_service_and_check/g" stack.sh
sed -i "s/configure_nfp_firewall/configure_nfp_firewall\n    configure_nfp_vpn/g" stack.sh
sed -i "s/install_apic_ml2/#install_apic_ml2/g" stack.sh
sed -i "s/install_aim/#install_aim/g" stack.sh
sed -i "s/init_aim/#init_aim/g" stack.sh
sed -i 's/# Restore\/close logging file descriptors/nfp_setup $TOP_DIR $ConfiguratorQcow2Image $VyosQcow2Image $HaproxyQcow2Image\n# Restore\/close logging file descriptors/g' stack.sh

sed -i "s/export OS_USER_DOMAIN_ID=default/#export OS_USER_DOMAIN_ID=default/g"  stack.sh
sed -i "s/export OS_PROJECT_DOMAIN_ID=default/#export OS_PROJECT_DOMAIN_ID=default/g"  stack.sh



sed -i 's/source $TOP_DIR\/lib\/dlm/source $TOP_DIR\/lib\/dlm\nsource $TOP_DIR\/lib\/nfp\nremove_nfp_logs_forword/g' unstack.sh
