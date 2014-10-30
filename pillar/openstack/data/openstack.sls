# Used by keystone module
keystone.token: a3c4v4f0d5jg85jg8dJr9sue943r
keystone.endpoint: http://10.10.0.2:35357/v2.0

keystone:
  admin_token: a3c4v4f0d5jg85jg8dJr9sue943r
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  memcached:
    ip: [ 10.10.0.2 ]
  keystone:
    admin:
      password: 'forthisweshallprevail'
      email: shane@darkstarnet.net
  config:
    DEFAULT:
      #admin_token: ADMIN_TOKEN
      debug: false

glance:
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  keystone:
    host: 10.10.0.2
    password: 'stealthagebombflowerpurple'
    email: 'shane@darkstarnet.net'
  api-config:
    DEFAULT:
      debug: False
      verbose: False
  reg-config:
    DEFAULT:
      debug: False
      verbose: False

neutron:
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  keystone:
    host: 10.10.0.2
    password: 'pissgarbneutralfarthousetentpurple'
    email: 'shane@darkstarnet.net'
  rabbitmq:
    name: openstack
    password: "this tree rose strange rock"
    ip: 10.10.0.2
  metadata_secret: hsdihr8089ty0d9fye08yf34890hfq308fh43489fh3948fh39hp93qh4fk%

nova:
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  public_interface: eth1
  private_interface: eth0
  keystone:
    password: 'tripleblueferrarigardenhouse'
    email: shane@darkstarnet.net
    host: 10.10.0.2
  rabbitmq:
    name: openstack
    password: "this tree rose strange rock"
    ip: 10.10.0.2
  config:
    DEFAULT:
      novncproxy_base_ip: 192.168.100.2

cinder:
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  keystone:
    password: 'fartpoopplaceflyheartgreybeard'
    email: shane@darkstarnet.net
    host: 10.10.0.2
  rabbitmq:
    name: openstack
    password: "this tree rose strange rock"
    ip: 10.10.0.2
  config:
    DEFAULT:
      debug: False

memcached:
  deamonize: True
  verbose_level: 0
  memory_cap: 64
  port: 11211
  user: 'memcache'
  listen_address: '10.10.0.2'
  max_connections: 1024
  lock_paged_memory: False
  error_on_mem_full: False
  max_core_file_limit: False

{#- vim:ft=sls
-#}
