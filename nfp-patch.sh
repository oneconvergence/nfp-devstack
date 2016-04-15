#!/usr/bin/env bash
set -x
rm -rf local.*
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/local.conf
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/lib/nfp -P lib/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/lb.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/lb_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw_lb.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw_lb_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw_ansible.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/fw_ansible_clean.sh -P exercises/nfp/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/templates/fw_template.yml -P exercises/nfp/templates/
wget https://raw.githubusercontent.com/oneconvergence/nfp-devstack/base-mode-mitaka/exercises/templates/haproxy.template -P exercises/nfp/templates/

sed -i 's/source $TOP_DIR\/lib\/dstat/source $TOP_DIR\/lib\/dstat\nsource $TOP_DIR\/lib\/nfp/g' stack.sh
sed -i "s/install_apic_ml2/#install_apic_ml2/g" stack.sh
sed -i "s/install_aim/#install_aim/g" stack.sh
sed -i "s/init_aim/#init_aim/g" stack.sh
sed -i 's/# Restore\/close logging file descriptors/nfp_setup $TOP_DIR\n# Restore\/close logging file descriptors/g' stack.sh

sed -i "s/export OS_USER_DOMAIN_ID=default/#export OS_USER_DOMAIN_ID=default/g"  stack.sh
sed -i "s/export OS_PROJECT_DOMAIN_ID=default/#export OS_PROJECT_DOMAIN_ID=default/g"  stack.sh



