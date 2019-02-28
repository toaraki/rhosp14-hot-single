#!/bin/bash


source ~/stackrc

openstack overcloud deploy --templates  /usr/share/openstack-tripleo-heat-templates \
-r /home/stack/templates/roles_data.yaml \
-n /home/stack/overcloud-validation/network_data.yaml \
-e /home/stack/global-config.yaml  \
-e /home/stack/overcloud-validation/environments/network-isolation.yaml \
-e /home/stack/overcloud-validation/environments/network-environment.yaml \
-e /home/stack/overcloud-validation/environments/net-single-nic-with-vlans.yaml \
-e /home/stack/templates/docker-registry.yaml 

