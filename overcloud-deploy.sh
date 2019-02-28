#!/bin/bash


source ~/stackrc

openstack overcloud deploy --templates  /usr/share/openstack-tripleo-heat-templates \
-r /home/stack/templates/roles_data.yaml \
-n /home/stack/overcloud-validation/network_data.yaml \
-e /home/stack/global-config.yaml  \
-e /home/stack/overcloud-validation/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/tls-endpoints-public-ip.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/collectd-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/logging-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/monitoring-environment.yaml \
-e /home/stack/overcloud-validation/environments/network-environment.yaml \
-e /home/stack/templates/environments/40-enable-tls.yaml \
-e /home/stack/templates/environments/45-inject-trust-anchor.yaml \
-e /home/stack/templates/optools.yaml \
-e /home/stack/overcloud-validation/environments/net-single-nic-with-vlans.yaml \
-e /home/stack/templates/docker-registry.yaml 

#-e /usr/share/openstack-tripleo-heat-templates/environments/docker.yaml \
#-e /usr/share/openstack-tripleo-heat-templates/environments/docker-ha.yaml  \

#-e /usr/share/openstack-tripleo-heat-templates/environments/monitoring-environment.yaml \
#-e /usr/share/openstack-tripleo-heat-templates/environments/services/octavia.yaml \
#-e /home/stack/overcloud-validation/environments/network-environment.yaml \
