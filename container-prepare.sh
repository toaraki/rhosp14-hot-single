#!/bin/sh

source ~/stackrc

## change "--push-destination IPAddress" according to your environment . This sample shows the case of  using director(setted up 192.168.24.1) as local registry .

openstack overcloud container image prepare \
--namespace registry.access.redhat.com/rhosp14 \
--tag-from-label {version}-{release} \
--prefix openstack \
--push-destination 192.168.24.1:8787 \
--output-images-file ~/templates/container-images.yaml \
--output-env-file ~/templates/docker-registry.yaml \
-r /home/stack/templates/roles_data.yaml \
-e global-config.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /home/stack/templates/environments/network-environment.yaml \
-e /home/stack/templates/environments/net-single-nic-with-vlans.yaml \
-e /home/stack/templates/docker-registry.yaml

