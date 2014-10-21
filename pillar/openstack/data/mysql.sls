mysql:
  server:
    # root_password: False - to have root@localhost without password
    root_password: 'bird storm shit stone valley'
    user: mysql
    # my.cnf sections changes 
    mysqld:
      bind-address: 10.10.0.2
      port: 3306
      log_bin: /var/log/mysql/mysql-bin.log
      auto_increment_increment: 5
      max_connect_errors: 4294967295
      # openstack darkstarnet custom settings
      default-storage-engine: innodb
      collation-server: utf8_general_ci
      character-set-server: utf8
      innodb_file_per_table: 1
      init-connect: SET NAMES utf8
    mysql:
      # my.cnf param that not require value
      no-auto-rehash: noarg_present

  # Override any names defined in map.jinja
  lookup:
    server: mysql-server
    client: mysql-client
    service: mysql-service
    config: /etc/mysql/my.cnf
    python: python-mysqldb

  database:
    - keystone
    - glance
    - nova

  user:
    keystone:
      password: 'somewayorangeballbliss'
      host: '10.10.0.%'
      databases:
        keystone:
          grants: ['all privileges']
    glance:
      password: 'twothreesixninerbathball'
      host: '10.10.0.%'
      databases:
        glance:
          grants: ['all privileges']
    nova:
      password: 'baseballonefordyellowtree'
      host: '10.10.0.%'
      databases:
        nova:
          grants: ['all privileges']
