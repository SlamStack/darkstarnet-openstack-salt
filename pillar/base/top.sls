# vi: set ft=yaml.jinja :

openstack:
  '*':
    - data.mounts
  '^(controller|compute)[0-9]*.darkstarnet$':
    - match: pcre
    - environment
    - mine_functions
    - data.network
    - data.ceph
  'controller01.darkstarnet':
    - data.mysql

