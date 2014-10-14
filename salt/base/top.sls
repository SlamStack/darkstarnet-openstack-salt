# vi: set ft=yaml.jinja :

base:
  '*':
    - salt.roles
openstack:
   '^(controller|compute)[0-9]*.darkstarnet$':
     - match: pcre
     - network
