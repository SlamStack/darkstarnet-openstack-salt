# vi: set ft=yaml.jinja :

openstack:
  '^(controller|compute)[0-9]*.darkstarnet$':
    - match: pcre
    - environment
    - mine_functions
    - data.network
    - data.ceph

