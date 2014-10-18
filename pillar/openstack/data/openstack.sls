# Used by keystone module
keystone.token: Fsdff09s9j4309jf93f3j0fxcjvzje049349jf
keystone.endpoint: http://10.10.0.2:35357/v2.0

keystone:
  public_ip: 192.168.100.2
  internal_ip: 10.10.0.2
  admin_ip: 10.10.0.2
  memcached:
    ip: [ 10.10.0.2 ]
  keystone:
    admin:
      password: 'for this we shall prevail'
      email: shane@darkstarnet.net
  config:
    DEFAULT:
      #admin_token: ADMIN_TOKEN
      debug: true
{#- vim:ft=sls
-#}
