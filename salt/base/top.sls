# vi: set ft=yaml.jinja :

base:
  '*':
    - salt.roles
    - ntp
    - common.mounts
openstack:
   'roles:openstack-controller or roles:openstack-compute':
     - match: pcre
     - network
   'roles:openstack-controller':
     - match: grain
     - mysql
     - mysql.client
     - rabbitmq
     - rabbitmq.network
#     - rabbitmq.config

