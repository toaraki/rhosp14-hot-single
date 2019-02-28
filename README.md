# sample instruction rhosp14 single node deploy

This is sample files for Red Hat OpenStack Platform ver 14 with single node deployment .

## Included files

* container-image-upload.sh -- Pull & Push Containers from RHCN to director's local docker registry .
* container-prepare.sh -- Generate container list for this environment .
* overcloud-deploy.sh -- run overcloud deploy as single-node-deployment.
* instack.json -- sample file of baremetal node definition to import to director .
* undercloud.conf -- sample configuration for director install  that includes under-cloud's networking definition .
* templates -- definition of overcloud environment that is all-in-one .


## How to use 

[ Caution ] This files does'nt care about your environment . You should better to check networking parameters these files include .

* Step 1 . Install RHEL 7.x
* Step 2 . director install & setup ( According to the [document](https://access.redhat.com/documentation/en-us/red_hat_openstack_platform/14/html/director_installation_and_usage/installing-the-undercloud) )
* Step 3 . expand templates directory
* Step 4 . run "container-prepare.sh"
* Step 5 . run "container-image-upload.sh"
* Step 6 . import baremetal nodes & prepare the node ( According to the [document](https://access.redhat.com/documentation/en-us/red_hat_openstack_platform/14/html/director_installation_and_usage/creating-a-basic-overcloud-with-cli-tools) )
* Step 7 . run "overcloud-deploy.sh"
