#!/bin/bash


source ~/stackrc

sudo openstack overcloud container image upload --verbose --config-file /home/stack/templates/container-images.yaml
