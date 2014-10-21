# vi: set ft=yaml.jinja :

base:
  '*':
    - salt.roles
    - ntp
    - common.mounts
openstack:
  '*':
    - network
    - repos
  'roles:openstack-controller':
    - match: grain
    - memcached
    - mysql
    - mysql.client
    - rabbitmq
    - keystone
    - glance
    - nova.controller
  'roles:openstack-compute':
    - match: grain
    - nova.compute
    - mysql.client
