#!/bin/sh
# A helper script for openshift-install

## ignition creation prep
sudo rm -rf openshift/
sudo mkdir openshift
sudo cp install-config.yaml openshift/

# create kubernetes manifests
/home/admin/OCP/openshift-install create manifests --dir /home/admin/OCP/openshift

## ignition config creation
/home/admin/OCP/openshift-install create ignition-configs --dir /home/admin/OCP/openshift
