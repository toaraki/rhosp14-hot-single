#!/bin/sh

source ~/stackrc

openstack overcloud container image prepare \
--namespace registry.access.redhat.com/rhosp14 \
--tag-from-label {version}-{release} \
--prefix openstack \
--push-destination 192.168.24.1:8787 \
--output-images-file ~/templates/container-images.yaml \
--output-env-file ~/templates/docker-registry.yaml \
-r /home/stack/templates/roles_data.yaml \
-e global-config.yaml \
-e /home/stack/overcloud-validation/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/collectd-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/logging-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/monitoring-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/services/octavia.yaml \
-e /home/stack/overcloud-validation/environments/network-environment.yaml \
-e /home/stack/templates/environments/40-enable-tls.yaml \
-e /home/stack/templates/environments/45-inject-trust-anchor.yaml \
-e /home/stack/templates/optools.yaml \
-e /home/stack/overcloud-validation/environments/net-single-nic-with-vlans.yaml \
-e /home/stack/templates/docker-registry.yaml

