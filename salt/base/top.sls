# vi: set ft=yaml.jinja :

base:
  '*':
    - salt.roles
    - ntp
    - common.mounts
openstack:
   '^(controller|compute)[0-9]*.darkstarnet$':
     - match: pcre
     - network
   'controller01.darkstarnet':
     - mysql
     - mysql.client
