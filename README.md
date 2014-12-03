Darkstarnet LAB: Deploy Openstack cluster with SaltStack
=========

Salt states for Openstack cluster deployment. Currently only Ceph MONs and OSDs are supported.

Prepare your environment
==============

First you need Salt master and minions installed and running on all nodes and minions keys should be accepted.

Networking should also be configured. There are custom networking templates for the darkstarnet lab in this repository that should work with little to no tweaking on other environments. This is currently not a formula due to the saltstack network module not working with bonds on Ubuntu 14 Trusty.

After networking has been configured the journal and main ceph partitions need to be clean. It may be required to install ceph and ceph-disk zap these if the orchestration run fails.

Outside of the afformentioned everything else aims to be a formula based on pillar data.

Configuration options
--------------

NOTE: Currently there must be one and one only 'ceph-admin' role defined,typically on the first node in the environment listing. This node will become the admin node and the initial mon node for provisioning the others.

Environment description file with examples is located here: pillar/openstack/environment.sls. Edit this file to match with your environment:

    nodes:
      ceph-node01:
        roles:
          - ceph-admin
          - ceph-osd
          - ceph-mon
          - openstack-controller
        devs:
          sdb:
            journal: sdc
      ceph-node02:
        roles:
          - ceph-osd
          - ceph-mon
          - openstack-compute
        devs:
          sdb:
            journal: sdc

Ceph configuration file will be automatically generated. Edit pillar/data/ceph.sls if you want to make additional changes:

    ceph:
      global:
        fsid: 294bc494-81ba-4c3c-ac5d-af7b3442a2a5
        public_network: 192.168.33.0/24
        cluster_network: 192.168.36.0/24
      client:
        rbd_cache: true
        rbd_cache_size: 134217728
      osd:
        journal_size: 3072
        pool_default_size: 3
        pool_default_min_size: 1
        pool_default_pg_num: 1024
        pool_default_pgp_num: 1024
        crush_chooseleaf_type: 1
        filestore_merge_threshold: 40
        filestore_split_multiple: 8
        op_threads: 8
      mon:
        interface: eth1

Take a look at those options to match with your machines:

    public_network: 192.168.33.0/24
    cluster_network: 192.168.36.0/24
    interface: eth1

To make changes to the network interface IP's edit pillar/openstack/data/network.sls. To make changes to 

Proceed with deployment step after changes are done.

Deployment
==============

First you need to run highstate to add roles to minions based on environment.sls file:

    salt '*' state.highstate

To start Ceph cluster deployment run orchestrate state from Salt master:

    salt-run -l debug state.orchestrate orchestrate.ceph
    
It will take few minutes to complete. Then you can check ceph cluster status from master:

    salt 'ceph-node01' cmd.run 'ceph -s'

TODO (Manually setup in the lab right now)
===============
1) Swift salt state
2) Trove salt state
3) LBaaS salt state
